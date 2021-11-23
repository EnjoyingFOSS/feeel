// Copyright (C) 2019–2021 Miroslav Mazel
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version. As an additional permission under
// section 7, you are allowed to distribute the software through an app
// store, even if that store has restrictive terms and conditions that
// are incompatible with the AGPL, provided that the source is also
// available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'package:feeel/audio/sound_view.dart';
import 'package:feeel/audio/tts_helper.dart';
import 'package:feeel/audio/tts_view.dart';
import 'package:feeel/controllers/workout_timer.dart';
import 'package:feeel/controllers/workout_view.dart';
import 'package:feeel/db/preference_keys.dart';
import 'package:feeel/enums/workout_stage.dart';
import 'package:feeel/models/view/exercise_step.dart';
import 'package:feeel/models/view/workout.dart';
import 'package:feeel/models/view/workout_exercise.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ViewTypes { GUI, AUDIO }

class WorkoutMeta {
  static int _START_DURATION =
      5; //todo get rid of countdown duration in the database
  static int _COUNTDOWN_DURATION = 3;
  final Workout _workout;
  int _exercisePos = 0;
  int _stepPos = 0;
  int? timerRestore = null;

  WorkoutMeta(this._workout);

  int getPos() => _exercisePos;

  int getStartDuration() =>
      getCurWorkoutExercise().breakBeforeDuration ?? _START_DURATION;

  int getCountdownDuration() => _COUNTDOWN_DURATION;

  int getCurBreakDuration() =>
      getCurWorkoutExercise().breakBeforeDuration ?? _workout.breakDuration;

  int getCurExerciseDuration() =>
      getCurWorkoutExercise().duration ?? _workout.exerciseDuration;

  List<int>? getCurStepDurations() => getCurWorkoutExercise()
      .exercise
      .steps
      ?.map((step) => step.duration)
      .toList();

  void next() {
    _exercisePos++;
    _stepPos = 0;
  }

  void previous() {
    _exercisePos--;
    _stepPos = 0;
  }

  void nextStep() {
    final stepCount = getCurWorkoutExercise().exercise.steps?.length;
    if (stepCount != null && _stepPos < stepCount - 1) {
      _stepPos++;
    } else {
      _stepPos = 0;
    }
  }

  bool isLastExercise() => _exercisePos == _workout.workoutExercises.length - 1;

  bool isFirstExercise() => _exercisePos == 0;

  WorkoutExercise getCurWorkoutExercise() =>
      _workout.workoutExercises[_exercisePos];

  ExerciseStep? getCurStep() =>
      getCurWorkoutExercise().exercise.steps?[_stepPos];
}

class WorkoutController {
  List<Function?> _onFinishes = List.filled(ViewTypes.values.length, null);
  List<WorkoutView?> _views = List.filled(
      ViewTypes.values.length, null); //todo weak references + NOT NULL SAFE!
  WorkoutStage _stage = WorkoutStage.READY;
  late WorkoutTimer _timer; //todo init timer
  late WorkoutMeta _workoutMeta;

  WorkoutController(Workout workout) {
    if (workout.workoutExercises.length == 0)
      throw Exception("Workout must have length > 0");

    _workoutMeta = WorkoutMeta(workout);

    _setUpAudio();

    _timer = WorkoutTimer(0, breakpoints: _workoutMeta.getCurStepDurations(),
        onSecondDecrease: () {
      //todo initTime seems useless
      for (var view in _views) view?.onCount(_timer.getTimeRemaining());
    }, onBreakpoint: () {
      _workoutMeta.nextStep();
      _renderLaterStep();
    }, onDone: () {
      switch (_stage) {
        case WorkoutStage.READY:
          break;
        case WorkoutStage.BREAK:
          _coordinateExerciseStage();
          break;
        case WorkoutStage.COUNTDOWN:
          _coordinateExerciseStage(restore: true);
          break;
        case WorkoutStage.EXERCISE:
          if (_workoutMeta.isLastExercise())
            _coordinateEndStage();
          else {
            _workoutMeta.next();
            _coordinateBreakStage();
          }
          break;
        case WorkoutStage.END:
          print("Timer active in END stage"); //todo should stop!
          break;
      }
    });
  } //todo how to init _exerciseCount ???

  void _setUpAudio() {
    SharedPreferences.getInstance().then((prefs) {
      if (prefs.getBool(PreferenceKeys.TTS_DISABLED_PREF) ?? false) {
        final SoundView soundView = SoundView();
        _views[ViewTypes.AUDIO.index] = soundView;
        _onFinishes[ViewTypes.AUDIO.index] = () {
          soundView.onFinish();
        };
      } else {
        _views[ViewTypes.AUDIO.index] = TTSView(); //todo allow audio setting
        _onFinishes[ViewTypes.AUDIO.index] = () {
          TTSHelper.tts.speak("You did it!".i18n);
        };
      }
    });
  }

  // CONTROLS
  void start() {
    _coordinateStart();
    _timer.start();
  }

  void skipToNext() {
    if (!_workoutMeta.isLastExercise()) {
      _workoutMeta.next();
      _coordinateExerciseStage();
    }
  }

  void skipToPrevious() {
    if (!_workoutMeta.isFirstExercise()) {
      _workoutMeta.previous();
      _coordinateExerciseStage();
    } else {
      _timer.reset(_workoutMeta.getCurExerciseDuration(),
          _workoutMeta.getCurStepDurations());
    }
  }

  void togglePlayPause() {
    if (_stage == WorkoutStage.EXERCISE ||
        _stage == WorkoutStage.BREAK ||
        _stage == WorkoutStage.COUNTDOWN) {
      if (_timer.isRunning()) {
        _timer.stop();
        _renderPausePlay();
      } else {
        if (_stage == WorkoutStage.EXERCISE) {
          _workoutMeta.timerRestore = _timer.getTimeRemaining();
          _coordinateCountdownStage();
        } else {
          _timer.start();
          _renderPausePlay();
        }
      }
    }
  }

  // Stage creation
  void _coordinateExerciseStage({bool restore = false}) {
    _stage = WorkoutStage.EXERCISE;
    _renderStage();

    if (restore) {
      _timer.reset(
          _workoutMeta.timerRestore ?? _workoutMeta.getCurExerciseDuration(),
          _workoutMeta.getCurStepDurations());
      _workoutMeta.timerRestore = null;
    } else {
      _timer.reset(_workoutMeta.getCurExerciseDuration(),
          _workoutMeta.getCurStepDurations());
    }
    _renderSeconds();

    _renderPausePlay();
  }

  void _coordinateCountdownStage() {
    _stage = WorkoutStage.COUNTDOWN;
    _renderStage();

    _timer.reset(_workoutMeta.getCountdownDuration(), null);
    _renderSeconds();
    _timer.start(); //todo is this the right place to do this?

    _renderPausePlay();
  }

  void _coordinateBreakStage() {
    _stage = WorkoutStage.BREAK;
    _renderStage();

    _timer.reset(_workoutMeta.getCurBreakDuration(), null);
    _renderSeconds();

    _renderPausePlay();
  }

  void _coordinateStart() {
    _renderStage();
    _stage = WorkoutStage.BREAK;

    _timer.reset(_workoutMeta.getStartDuration(), null);
    _renderSeconds();

    _renderPausePlay();
  }

  void _coordinateEndStage() {
    _timer.stop();

    _stage = WorkoutStage.END;
    _renderStage();
  }

  // RENDER

  void _renderStage() {
    switch (_stage) {
      case WorkoutStage.READY:
        for (var view in _views)
          view?.onStart(
              _workoutMeta.getPos(),
              _workoutMeta.getCurWorkoutExercise(),
              _workoutMeta.getStartDuration());
        break;
      case WorkoutStage.COUNTDOWN:
        for (var view in _views) view?.onCountdown(_workoutMeta.getPos());
        break;
      case WorkoutStage.EXERCISE:
        for (var view in _views)
          view?.onExercise(
              _workoutMeta.getPos(),
              _workoutMeta.getCurWorkoutExercise(),
              _workoutMeta.getCurStep(),
              _workoutMeta.getCurExerciseDuration());
        break;
      case WorkoutStage.BREAK:
        for (var view in _views)
          view?.onBreak(
              _workoutMeta.getPos(),
              _workoutMeta.getCurWorkoutExercise(),
              _workoutMeta.getCurBreakDuration());
        break;
      case WorkoutStage.END:
        for (var onFinish in _onFinishes) if (onFinish != null) onFinish();
        break;
    }
  }

  void _renderPausePlay() {
    if (_timer.isRunning())
      for (var view in _views) view?.onPlay();
    else
      for (var view in _views) view?.onPause();
  }

  void _renderLaterStep() {
    final step = _workoutMeta.getCurStep();
    if (step != null) for (var view in _views) view?.onLaterStep(step);
  }

  void _renderSeconds() {
    for (var view in _views) view?.onCount(_timer.getTimeRemaining());
  }

  // setters

  void setOnFinish(Function onFinish) {
    _onFinishes[ViewTypes.GUI.index] = onFinish;
  }

  void setView(WorkoutView view) {
    _views[ViewTypes.GUI.index] = view;
  }

  void clearView() {
    _views[ViewTypes.GUI.index] = null;
  }

  void close() {
    _timer.stop();
    clearView();
    _views[ViewTypes.AUDIO.index] = null;
    _onFinishes[ViewTypes.AUDIO.index] = null;
    TTSHelper.tts.stop(); //todo once stopped, does it restart?
    // todo views.clear() needed?
  }
}
