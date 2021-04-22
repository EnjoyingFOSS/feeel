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
import 'package:feeel/db/preference_keys.dart';
import 'package:feeel/models/view/workout.dart';
import 'package:feeel/models/view/workout_exercise.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum WorkoutStage { READY, EXERCISE, BREAK, END }

enum ViewTypes { GUI, AUDIO }

class WorkoutController {
  final Workout _workout;
  List<Function?> _onFinishes = List.filled(ViewTypes.values.length, null);
  List<WorkoutView?> _views = List.filled(
      ViewTypes.values.length, null); //todo weak references + NOT NULL SAFE!
  int _exercisePos = 0;
  WorkoutStage _stage = WorkoutStage.READY;
  late WorkoutTimer _timer; //todo init timer

  WorkoutController(this._workout) {
    if (_workout.workoutExercises.length == 0)
      throw Exception("Workout must have length > 0");

    _setUpAudio();

    _timer = WorkoutTimer(0, onSecondDecrease: () {
      //todo initTime seems useless
      for (var view in _views) view?.onCount(_timer.timeRemaining);
    }, onTimerZero: () {
      switch (_stage) {
        case WorkoutStage.READY:
          break;
        case WorkoutStage.BREAK:
          _setUpExerciseStage();
          break;
        case WorkoutStage.EXERCISE:
          if (_isLastExercise())
            _setUpEndStage();
          else {
            _exercisePos++;
            _setUpBreakStage();
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
        final WorkoutView soundView = SoundView();
        _views[ViewTypes.AUDIO.index] = soundView;
        _onFinishes[ViewTypes.AUDIO.index] = () {
          (soundView as dynamic).onFinish(); //todo typing to dynamic is ugly
        };
      } else {
        _views[ViewTypes.AUDIO.index] = TTSView(); //todo allow audio setting
        _onFinishes[ViewTypes.AUDIO.index] = () {
          TTSHelper.tts.speak("You did it!".i18n);
        };
      }
    });
  }

  // HELPERS
  WorkoutExercise _getCurWorkoutExercise() =>
      _workout.workoutExercises[_exercisePos];

  bool _isLastExercise() =>
      _exercisePos == _workout.workoutExercises.length - 1;

  bool _isFirstExercise() => _exercisePos == 0;

  // CONTROLS
  void start() {
    _setUpStart();
    _timer.start();
  }

  void skipToNext() {
    if (!_isLastExercise()) {
      _exercisePos++;
      _setUpExerciseStage();
    }
  }

  void skipToPrevious() {
    if (!_isFirstExercise()) {
      _exercisePos--;
      _setUpExerciseStage();
    } else {
      var tempDuration = _getCurWorkoutExercise().duration;
      _timer.timeRemaining =
          tempDuration == null ? _workout.exerciseDuration : tempDuration;
    }
  }

  void togglePlayPause() {
    if (_stage == WorkoutStage.EXERCISE || _stage == WorkoutStage.BREAK) {
      if (_timer.isRunning()) {
        _timer.stop();
        _renderPausePlay();
      } else {
        _timer.start();
        _renderPausePlay();
      }
    }
  }

  // RENDER

  void _renderStage() {
    var curWorkoutExercise = _getCurWorkoutExercise();
    switch (_stage) {
      case WorkoutStage.READY:
        for (var view in _views)
          view?.onStart(
              _exercisePos,
              curWorkoutExercise,
              curWorkoutExercise.breakBeforeDuration == null
                  ? _workout.countdownDuration
                  : curWorkoutExercise.breakBeforeDuration!);
        break;
      case WorkoutStage.EXERCISE:
        for (var view in _views)
          view?.onExercise(
              _exercisePos,
              curWorkoutExercise,
              curWorkoutExercise.duration == null
                  ? _workout.exerciseDuration
                  : curWorkoutExercise.duration!);
        break;
      case WorkoutStage.BREAK:
        for (var view in _views)
          view?.onBreak(
              _exercisePos,
              curWorkoutExercise,
              curWorkoutExercise.breakBeforeDuration == null
                  ? _workout.breakDuration
                  : curWorkoutExercise.breakBeforeDuration!);
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

  void _renderSeconds() {
    for (var view in _views) view?.onCount(_timer.timeRemaining);
  }

  void _setUpExerciseStage() {
    _stage = WorkoutStage.EXERCISE;
    _renderStage();

    var tempDuration = _getCurWorkoutExercise().duration;
    _timer.timeRemaining =
        tempDuration == null ? _workout.exerciseDuration : tempDuration;
    _renderSeconds();

    _renderPausePlay();
  }

  void _setUpBreakStage() {
    _stage = WorkoutStage.BREAK;
    _renderStage();

    var tempDuration = _getCurWorkoutExercise().breakBeforeDuration;
    _timer.timeRemaining =
        tempDuration == null ? _workout.breakDuration : tempDuration;
    _renderSeconds();

    _renderPausePlay();
  }

  void _setUpStart() {
    _renderStage();
    _stage = WorkoutStage.BREAK;

    var tempDuration = _getCurWorkoutExercise().breakBeforeDuration;
    _timer.timeRemaining =
        tempDuration == null ? _workout.countdownDuration : tempDuration;
    _renderSeconds();

    _renderPausePlay();
  }

  void _setUpEndStage() {
    _timer.stop();

    _stage = WorkoutStage.END;
    _renderStage();
  }

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

abstract class WorkoutView {
  void onStart(
      int workoutPos, WorkoutExercise nextExercise, int defaultBreakDuration);
  void onBreak(
      int workoutPos, WorkoutExercise nextExercise, int defaultBreakDuration);
  void onExercise(
      int workoutPos, WorkoutExercise exercise, int defaultExerciseDuration);
  void onCount(int seconds);
  void onPause();
  void onPlay();
}
