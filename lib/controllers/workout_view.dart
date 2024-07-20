// Copyright Miroslav Mazel et al.
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// As an additional permission under section 7, you are allowed to distribute
// the software through an app store, even if that store has restrictive terms
// and conditions that are incompatible with the AGPL, provided that the source
// is also available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// As a limitation under section 7, all unofficial builds and forks of the app
// must be clearly labeled as unofficial in the app's name (e.g. "Feeel
// UNOFFICIAL", never just "Feeel") or use a different name altogether.
// If any code changes are made, the fork should use a completely different name
// and app icon. All unofficial builds and forks MUST use a different
// application ID, in order to not conflict with a potential official release.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'dart:async';

import 'package:feeel/enums/workout_stage.dart';
import 'package:feeel/models/translated_exercise.dart';

abstract class WorkoutView {
  FutureOr<void> onStart(int exercisePos, TranslatedExercise nextTranslatedExercise,
      int defaultBreakDuration);
  FutureOr<void> onBreak(int exercisePos, TranslatedExercise nextTranslatedExercise,
      int defaultBreakDuration);
  FutureOr<void> onExercise(
      int exercisePos,
      TranslatedExercise translatedExercise,
      // ExerciseStep? firstStep,
      int defaultExerciseDuration);
  FutureOr<void> onCountdown(
      int exercisePos); //TODO exercisePos is here only because of the non-ideal architecture of the exercise view
  // void onLaterStep(int stepPos, ExerciseStep step);
  FutureOr<void> onCount(
      int seconds,
      WorkoutStage
          stage); //TODO need to pass in stage here OR how about I register to be notified of a specific time? just like with stages; could maybe keep a map of functions for each breakpoint...
  FutureOr<void> onPause();
  FutureOr<void> onPlay();
  FutureOr<void> onDispose();
}
