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

import 'package:feeel/audio/audio_helper.dart';
import 'package:feeel/audio/tts_helper.dart';
import 'package:feeel/controllers/workout_view.dart';
import 'package:feeel/enums/workout_stage.dart';
import 'package:feeel/models/translated_exercise.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TTSView implements WorkoutView {
  final AppLocalizations l10n;

  int _halfTime = 0;

  TTSView(this.l10n);

  @override
  void onStart(int exercisePos, TranslatedExercise nextTranslatedExercise,
      int duration) {
    TTSHelper.tts.speak(
        l10n.txtLetsGoFirstUp
            .replaceFirst("%s", nextTranslatedExercise.getName()),
        priority: AudioPriority.high); //TODO internationalization
  }

  @override
  void onBreak(int exercisePos, TranslatedExercise nextTranslatedExercise,
      int duration) {
    TTSHelper.tts.speak(
        "${l10n.txtBreak} ${l10n.txtNextUp} ${nextTranslatedExercise.getName()}",
        priority: AudioPriority.high);
  }

  @override
  void onCount(int seconds, WorkoutStage stage) {
    //TODO eliminate conflicts with step content
    if (seconds <= AudioHelper.countdown) {
      TTSHelper.tts.speak(seconds.toString(), priority: AudioPriority.low);
    } else if (seconds == _halfTime && stage == WorkoutStage.exercise) {
      TTSHelper.tts.speak(
          l10n.txtSecondsLeft5plus.replaceFirst("%d", "$seconds"),
          priority: AudioPriority.low); //TODO internationalize with declension
    }
  }

  @override
  void onExercise(
      int exercisePos, TranslatedExercise translatedExercise, int duration) {
    TTSHelper.tts
        .speak(translatedExercise.getName(), priority: AudioPriority.high);
    _halfTime = (duration / 2).ceil();
    // TODO handle first step
  }

  @override
  void onPause() {}

  @override
  void onPlay() {}

  @override
  void onCountdown(int exercisePos) {
    TTSHelper.tts.speak(l10n.txtGetReady, priority: AudioPriority.high);
  }

  void stop() {
    TTSHelper.tts.stop(); //TODO once stopped, does it restart?
  }

  @override
  void onDispose() {}
}
