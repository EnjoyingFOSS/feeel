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

import 'package:audioplayers/audioplayers.dart';
import 'package:feeel/audio/audio_helper.dart';
import 'package:feeel/controllers/workout_view.dart';

class SoundView implements WorkoutView {
  //TODO should this whole thing be static? TTS as well?
  static final _soundExercise =
      AssetSource("sounds/exercise.mp3"); //TODO use path here!!!
  static final _soundBreak = AssetSource("sounds/break.mp3");
  static final _soundFinish = AssetSource("sounds/finish.mp3");
  static final _soundTick = AssetSource(
      "sounds/tick.mp3"); // TODO use ogg, or debug how tinny it sounds
  static final AudioPlayer _player = AudioPlayer();

  SoundView() {
    // if (Platform.isAndroid) _player.setPlayerMode(PlayerMode.lowLatency); //TODO don't set until this bug is fixed: https://github.com/bluefireteam/audioplayers/issues/1193
  }

  @override
  Future<void> onBreak(int exercisePos, _, int defaultBreakDuration) async {
    await _player.stop(); //TODO this is temporary, due to bug
    await _player.play(_soundBreak);
  }

  @override
  Future<void> onCount(int seconds, _) async {
    if (seconds <= AudioHelper.countdown) {
      await _player.stop(); //TODO this is temporary, due to bug
      await _player.play(_soundTick);
    }
  }

  @override
  Future<void> onExercise(
      int exercisePos, _, int defaultExerciseDuration) async {
    await _player.stop(); //TODO this is temporary, due to bug
    await _player.play(_soundExercise);
    //TODO handle step
  }

  @override
  void onPause() {}

  @override
  void onPlay() {}

  @override
  void onStart(int exercisePos, _, int defaultBreakDuration) {}

  Future<void> onFinish() async {
    await _player.stop(); //TODO this is temporary, due to bug
    await _player.play(_soundFinish);
  }

  // @override
  // void onLaterStep(int stepPos, ExerciseStep step) {
  //   if (step.voiceHint != null) _player.play(_soundTick);
  // }

  @override
  void onCountdown(int exercisePos) {}

  @override
  Future<void> onDispose() async {
    await _player.dispose();
  }
}
