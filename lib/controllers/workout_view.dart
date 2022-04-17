import 'package:feeel/enums/workout_stage.dart';
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
  void onCount(int seconds, WorkoutStage stage); //todo need to pass in stage here OR how about I register to be notified of a specific time? just like with stages; could maybe keep a map of functions for each breakpoint...
  void onPause();
  void onPlay();
}
