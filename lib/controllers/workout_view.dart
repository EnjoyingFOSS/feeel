import 'package:feeel/models/view/exercise_step.dart';
import 'package:feeel/models/view/workout_exercise.dart';

abstract class WorkoutView {
  void onStart(
      int workoutPos, WorkoutExercise nextExercise, int defaultBreakDuration);
  void onBreak(
      int workoutPos, WorkoutExercise nextExercise, int defaultBreakDuration);
  void onExercise(int workoutPos, WorkoutExercise exercise,
      ExerciseStep? firstStep, int defaultExerciseDuration);
  void onCountdown(
      int workoutPos); //todo workoutPos is here only because of the non-ideal architecture of the exercise view
  void onLaterStep(ExerciseStep step);
  void onCount(int seconds);
  void onPause();
  void onPlay();
}
