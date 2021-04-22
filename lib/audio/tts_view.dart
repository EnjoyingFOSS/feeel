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

import 'package:feeel/audio/audio_helper.dart';
import 'package:feeel/audio/tts_helper.dart';
import 'package:feeel/controllers/workout_controller.dart';
import 'package:feeel/models/view/workout_exercise.dart';
import 'package:feeel/i18n/translations.dart';

class TTSView implements WorkoutView {
  int _halfTime = 0;

  @override
  void onStart(int workoutPos, WorkoutExercise nextExercise, int duration) {
    TTSHelper.tts.speak("Let's go! First up: %s".i18n.replaceFirst(
        "%s", nextExercise.exercise.name.i18n)); //todo internationalization
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
    if (seconds <= AudioHelper.COUNTDOWN)
      TTSHelper.tts.speak(seconds.toString());
    else if (seconds == _halfTime) {
      TTSHelper.tts.speak("%d seconds left".i18n.replaceFirst(
          "%d", "$seconds")); //todo internationalize with declension
    }
  }

  @override
  void onExercise(int workoutPos, WorkoutExercise exercise, int duration) {
    TTSHelper.tts.speak(exercise.exercise.name.i18n);
    _halfTime = (duration / 2).ceil();
  }

  @override
  void onPause() {}

  @override
  void onPlay() {}
}
