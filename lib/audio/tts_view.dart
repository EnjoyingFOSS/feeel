import 'package:feeel/audio/tts_helper.dart';
import 'package:feeel/controllers/workout_controller.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/i18n/translations.dart';

class TTSView implements WorkoutView {
  static final int COUNTDOWN = 5;
  int halfTime = 0;

  @override
  void onStart(int workoutPos, WorkoutExercise nextExercise, int duration) {
    TTSHelper.tts.speak("Let's go! First up: %s".i18n.replaceFirst(
        "%s", nextExercise.exercise.name)); //todo internationalization
  }

  @override
  void onBreak(int workoutPos, WorkoutExercise nextExercise, int duration) {
    TTSHelper.tts.speak("Break!".i18n +
        " " +
        "Next up:".i18n +
        " " +
        nextExercise.exercise.name.i18n);
  }

  @override
  void onCount(int seconds) {
    if (seconds <= COUNTDOWN)
      TTSHelper.tts.speak(seconds.toString());
    else if (seconds == halfTime) {
      TTSHelper.tts.speak("%d seconds left".i18n.replaceFirst(
          "%d", "$seconds")); //todo internationalize with declension
    }
  }

  @override
  void onExercise(int workoutPos, WorkoutExercise exercise, int duration) {
    TTSHelper.tts.speak(exercise.exercise.name.i18n);
    halfTime = (duration / 2).ceil();
  }

  @override
  void onPause() {}

  @override
  void onPlay() {}
}
