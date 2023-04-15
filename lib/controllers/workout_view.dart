import 'package:feeel/enums/workout_stage.dart';
import 'package:feeel/models/full_exercise.dart';

abstract class WorkoutView {
  void onStart(int exercisePos, FullExercise nextPrimaryLangFullExercise,
      int defaultBreakDuration);
  void onBreak(int exercisePos, FullExercise nextPrimaryLangFullExercise,
      int defaultBreakDuration);
  void onExercise(
      int exercisePos,
      FullExercise primaryLangFullExercise,
      // ExerciseStep? firstStep,
      int defaultExerciseDuration);
  void onCountdown(
      int exercisePos); //TODO exercisePos is here only because of the non-ideal architecture of the exercise view
  // void onLaterStep(int stepPos, ExerciseStep step);
  void onCount(
      int seconds,
      WorkoutStage
          stage); //TODO need to pass in stage here OR how about I register to be notified of a specific time? just like with stages; could maybe keep a map of functions for each breakpoint...
  void onPause();
  void onPlay();
  void onDispose();
}
