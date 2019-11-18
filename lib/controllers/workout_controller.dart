import 'dart:async';

import 'package:feeel/controllers/workout_timer.dart';
import 'package:feeel/helpers/tts_helper.dart';
import 'package:feeel/models/exercise.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';

enum WorkoutStage { EXERCISE, BREAK, END }

enum ViewTypes { GUI, TTS }

class WorkoutController {
  final Workout _workout;
  List<Function> _onFinishes = List(ViewTypes.values.length);
  List<WorkoutView> _views =
      List(ViewTypes.values.length); //todo weak references + NOT NULL SAFE!
  int _exercisePos = 0;
  WorkoutStage _stage = WorkoutStage.BREAK;
  WorkoutTimer _timer; //todo init timer

  WorkoutController(this._workout) {
    _timer = WorkoutTimer(_getCurWorkoutExercise().breakBeforeDuration,
        onSecondDecrease: () {
      for (var view in _views) view?.onCount(_timer.timeRemaining);
    }, onTimerZero: () {
      switch (_stage) {
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

    _renderStage();
    _renderSeconds(); // todo remove once I add PREPARED state

    _timer.start();
  } //todo how to init _exerciseCount ???

  // HELPERS
  WorkoutExercise _getCurWorkoutExercise() =>
      _workout.workoutExercises[_exercisePos];

  bool _isLastExercise() =>
      _exercisePos == _workout.workoutExercises.length - 1;

  bool _isFirstExercise() => _exercisePos == 0;

  // CONTROLS
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
      _timer.timeRemaining = _getCurWorkoutExercise().duration;
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
    switch (_stage) {
      case WorkoutStage.EXERCISE:
        for (var view in _views)
          view?.onExercise(_exercisePos, _getCurWorkoutExercise());
        break;
      case WorkoutStage.BREAK:
        for (var view in _views)
          view?.onBreak(_exercisePos, _getCurWorkoutExercise());
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

    _timer.timeRemaining = _getCurWorkoutExercise().duration;
    _renderSeconds();

    _renderPausePlay();
  }

  void _setUpBreakStage() {
    _stage = WorkoutStage.BREAK;
    _renderStage();

    _timer.timeRemaining = _getCurWorkoutExercise().breakBeforeDuration;
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
    TTSHelper.tts.stop();
    _timer.stop();
    _views.clear();
    // todo views.clear() needed?
  }
}

abstract class WorkoutView {
  void onBreak(int workoutPos, WorkoutExercise nextExercise);
  void onExercise(int workoutPos, WorkoutExercise exercise);
  void onCount(int seconds);
  void onPause();
  void onPlay();
}
