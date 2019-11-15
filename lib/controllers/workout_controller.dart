// import 'dart:async';

// import 'package:feeel/models/exercise.dart';
// import 'package:feeel/models/workout.dart';
// import 'package:feeel/models/workout_exercise.dart';

// enum WorkoutStage { EXERCISE, BREAK, END }

// class WorkoutController {
//   final Workout _workout;
//   final int _exerciseCount = _workout.workoutExercises.length;
//   WorkoutCallback _callback;
//   int _exercisePos;
//   int _timeRemaining;
//   bool _isTimerRunning = false;
//   WorkoutStage _stage = WorkoutStage.BREAK;
//   Timer _timer;
  
//   WorkoutController(this._workout); //todo how to init _exerciseCount ???

//   void skipToNext() {
//     if (_exercisePos != _workout.workoutExercises.length - 1) {
//             _exercisePos++;
//             setUpExerciseStage();
//         }
//   }
//   void skipToPrevious() {
//     if (_exercisePos != 0) {
//             _exercisePos--;
//             setUpExerciseStage();
//         } else {
//             _timer.timeRemaining = _curExerciseLength;
//         }
//   }
//   void pause() {}
//   void play() {
//     if (!_isTimerRunning) {
//       _timer = Timer.periodic(Duration(seconds: 1), _decreaseSecond);
//     }
//     if (_callback != null) _callback.onPlay();
//   }
//   void _decreaseSecond(Timer timer) {
//     if (_timeRemaining == 1) {
//       _onTimerZero();
//     } else {
//     _timeRemaining--;
//     }
//   }

//   void _onTimerZero() {
//     switch (_stage) {
//       case WorkoutStage.EXERCISE:
//         _exercisePos++;
//         if (_exercisePos < _exerciseCount) {
//         _stage = WorkoutStage.BREAK;
//         _timeRemaining = _workout.workoutExercises[_exercisePos].breakBeforeDuration;
//         } else {
//           _stage = WorkoutStage.END;
//           _timeRemaining = -1;
//           _timer.cancel();
//         }
//         break;
//         case WorkoutStage.BREAK:
//         _stage = WorkoutStage.EXERCISE;
//         _timeRemaining = _workout.workoutExercises[_exercisePos].duration;
//         break;
//         case WorkoutStage.END:
//         print("Timer active in END stage");
//         break;
//     }
//   }

//   void setUpExerciseStage() //todo
//   void setUpBreakStage()
//   void setUpEndStage()

//   void setCallback(WorkoutCallback callback) {
//     _callback = callback;
//   }
// }

// abstract class WorkoutCallback {
//   void onFinish();
//   void onBreak(WorkoutExercise nextExercise);
//   void onExercise(WorkoutExercise exercise);
// }

// abstract class ExerciseCallback {
//     void onPause();
//   void onPlay();
//   void onSecondElapsed(int second);
// }