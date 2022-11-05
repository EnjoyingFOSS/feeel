// Copyright (C) 2019 Miroslav Mazel
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

import 'dart:io';

import 'package:feeel/audio/sound_view.dart';
import 'package:feeel/audio/tts_helper.dart';
import 'package:feeel/audio/tts_view.dart';
import 'package:feeel/controllers/workout_timer.dart';
import 'package:feeel/controllers/workout_view.dart';
import 'package:feeel/db/preference_keys.dart';
import 'package:feeel/enums/workout_stage.dart';
// import 'package:feeel/models/view/exercise_step.dart';
import 'package:feeel/models/view/workout.dart';
import 'package:feeel/models/view/workout_exercise.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum _ViewTypes { gui, audio }

class WorkoutMeta {
  static const _startDuration =
      5; //todo get rid of countdown duration in the database
  static const _countdownDuration = 3;
  final Workout _workout;
  int _exercisePos = 0;
  int _stepPos = 0;
  int? timerRestore;

  WorkoutMeta(this._workout);

  int getExercisePos() => _exercisePos;

  int getStepPos() => _stepPos;

  int getStartDuration() =>
      getCurWorkoutExercise().breakBeforeDuration ?? _startDuration;

  int getCountdownDuration() => _countdownDuration;

  int getCurBreakDuration() =>
      getCurWorkoutExercise().breakBeforeDuration ?? _workout.breakDuration;

  int getCurExerciseDuration() =>
      getCurWorkoutExercise().duration ?? _workout.exerciseDuration;

  // List<int>? getCurStepDurations() => getCurWorkoutExercise()
  //     .exercise
  //     .steps
  //     ?.map((step) => step.duration)
  //     .toList();

  void next() {
    _exercisePos++;
    _stepPos = 0;
  }

  void previous() {
    _exercisePos--;
    _stepPos = 0;
  }

  // void nextStep() {
  //   final stepCount = getCurWorkoutExercise().exercise.steps?.length;
  //   if (stepCount != null && _stepPos < stepCount - 1) {
  //     _stepPos++;
  //   } else {
  //     _stepPos = 0;
  //   }
  // }

  bool isLastExercise() => _exercisePos == _workout.workoutExercises.length - 1;

  bool isFirstExercise() => _exercisePos == 0;

  WorkoutExercise getCurWorkoutExercise() =>
      _workout.workoutExercises[_exercisePos];

  // ExerciseStep? getCurStep() =>
  //     getCurWorkoutExercise().exercise.steps?[_stepPos];
}

class WorkoutController {
  final List<Function?> _onFinishes =
      List.filled(_ViewTypes.values.length, null);
  final List<WorkoutView?> _views = List.filled(
      _ViewTypes.values.length, null); //todo weak references + NOT NULL SAFE!
  WorkoutStage _stage = WorkoutStage.ready;
  late WorkoutTimer _timer; //todo init timer
  late WorkoutMeta _workoutMeta;

  WorkoutController(Workout workout) {
    if (workout.workoutExercises.isEmpty) {
      throw Exception("Workout must have length > 0");
    }

    _workoutMeta = WorkoutMeta(workout);

    _setUpAudio();

    _timer = WorkoutTimer(0,
        // _workoutMeta.getCurStepDurations(),
        onSecondDecrease: () {
      //todo initTime seems useless
      for (final view in _views) {
        view?.onCount(_timer.getTimeRemaining(), _stage);
      }
    }, onBreakpoint: () {
      // _workoutMeta.nextStep();
      _renderLaterStep();
    }, onDone: () {
      switch (_stage) {
        case WorkoutStage.ready:
          break;
        case WorkoutStage.workoutBreak:
          _coordinateExerciseStage();
          break;
        case WorkoutStage.countdown:
          _coordinateExerciseStage(restore: true);
          break;
        case WorkoutStage.exercise:
          if (_workoutMeta.isLastExercise()) {
            _coordinateEndStage();
          } else {
            _workoutMeta.next();
            _coordinateBreakStage();
          }
          break;
        case WorkoutStage.end:
          break;
      }
    });
  } //todo how to init _exerciseCount ???

  void _setUpAudio() {
    SharedPreferences.getInstance().then((prefs) {
      if (prefs.getBool(PreferenceKeys.ttsDisabledPref) ?? Platform.isLinux
          ? true
          : false) {
        final SoundView soundView = SoundView();
        _views[_ViewTypes.audio.index] = soundView;
        _onFinishes[_ViewTypes.audio.index] = () {
          soundView.onFinish();
        };
      } else {
        _views[_ViewTypes.audio.index] = TTSView(); //todo allow audio setting
        _onFinishes[_ViewTypes.audio.index] = () {
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
          null // _workoutMeta.getCurStepDurations()
          );
    }
  }

  void togglePlayPause() {
    if (_stage == WorkoutStage.exercise ||
        _stage == WorkoutStage.workoutBreak ||
        _stage == WorkoutStage.countdown) {
      if (_timer.isRunning()) {
        _timer.stop();
        _renderPausePlay();
      } else {
        if (_stage == WorkoutStage.exercise) {
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
    _stage = WorkoutStage.exercise;
    _renderStage();

    if (restore) {
      _timer.reset(
          _workoutMeta.timerRestore ?? _workoutMeta.getCurExerciseDuration(),
          null // _workoutMeta.getCurStepDurations()
          );
      _workoutMeta.timerRestore = null;
    } else {
      _timer.reset(_workoutMeta.getCurExerciseDuration(),
          null // _workoutMeta.getCurStepDurations()
          );
    }
    _renderSeconds();

    _renderPausePlay();
  }

  void _coordinateCountdownStage() {
    _stage = WorkoutStage.countdown;
    _renderStage();

    _timer.reset(_workoutMeta.getCountdownDuration(), null);
    _renderSeconds();
    _timer.start(); //todo is this the right place to do this?

    _renderPausePlay();
  }

  void _coordinateBreakStage() {
    _stage = WorkoutStage.workoutBreak;
    _renderStage();

    _timer.reset(_workoutMeta.getCurBreakDuration(), null);
    _renderSeconds();

    _renderPausePlay();
  }

  void _coordinateStart() {
    _renderStage();
    _stage = WorkoutStage.workoutBreak;

    _timer.reset(_workoutMeta.getStartDuration(), null);
    _renderSeconds();

    _renderPausePlay();
  }

  void _coordinateEndStage() {
    _timer.stop();

    _stage = WorkoutStage.end;
    _renderStage();
  }

  // RENDER

  void _renderStage() {
    switch (_stage) {
      case WorkoutStage.ready:
        for (final view in _views) {
          view?.onStart(
              _workoutMeta.getExercisePos(),
              _workoutMeta.getCurWorkoutExercise(),
              _workoutMeta.getStartDuration());
        }
        break;
      case WorkoutStage.countdown:
        for (final view in _views) {
          view?.onCountdown(_workoutMeta.getExercisePos());
        }
        break;
      case WorkoutStage.exercise:
        for (final view in _views) {
          view?.onExercise(
              _workoutMeta.getExercisePos(),
              _workoutMeta.getCurWorkoutExercise(),
              //_workoutMeta.getCurStep(),
              _workoutMeta.getCurExerciseDuration());
        }
        break;
      case WorkoutStage.workoutBreak:
        for (final view in _views) {
          view?.onBreak(
              _workoutMeta.getExercisePos(),
              _workoutMeta.getCurWorkoutExercise(),
              _workoutMeta.getCurBreakDuration());
        }
        break;
      case WorkoutStage.end:
        for (final onFinish in _onFinishes) {
          if (onFinish != null) onFinish();
        }
        break;
    }
  }

  void _renderPausePlay() {
    if (_timer.isRunning()) {
      for (final view in _views) {
        view?.onPlay();
      }
    } else {
      for (final view in _views) {
        view?.onPause();
      }
    }
  }

  void _renderLaterStep() {
    // final step = _workoutMeta.getCurStep();
    // if (step != null) {
    //   for (final view in _views) {
    //     view?.onLaterStep(_workoutMeta._stepPos, step);
    //   }
    // }
  }

  void _renderSeconds() {
    for (final view in _views) {
      view?.onCount(_timer.getTimeRemaining(), _stage);
    }
  }

  // setters

  void setOnFinish(Function onFinish) {
    _onFinishes[_ViewTypes.gui.index] = onFinish;
  }

  void setView(WorkoutView view) {
    _views[_ViewTypes.gui.index] = view;
  }

  void clearView() {
    _views[_ViewTypes.gui.index] = null;
  }

  void close() {
    _timer.stop();
    clearView();
    _views[_ViewTypes.audio.index] = null;
    _onFinishes[_ViewTypes.audio.index] = null;
    TTSHelper.tts.stop(); //todo once stopped, does it restart?
    // todo views.clear() needed?
  }
}
