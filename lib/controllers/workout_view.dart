import 'package:feeel/models/view/exercise_step.dart';
import 'package:feeel/models/view/workout_exercise.dart';

abstract class WorkoutView {
  void onStart(
      int exercisePos, WorkoutExercise nextExercise, int defaultBreakDuration);
  void onBreak(
      int exercisePos, WorkoutExercise nextExercise, int defaultBreakDuration);
  void onExercise(int exercisePos, WorkoutExercise exercise,
      ExerciseStep? firstStep, int defaultExerciseDuration);
  void onCountdown(
      int exercisePos); //todo exercisePos is here only because of the non-ideal architecture of the exercise view
  void onLaterStep(int stepPos, ExerciseStep step);
  void onCount(int seconds);
  void onPause();
  void onPlay();
}
