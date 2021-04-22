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

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:feeel/controllers/workout_controller.dart';
import 'package:feeel/models/view/workout_exercise.dart';

import 'audio_helper.dart';

class SoundView implements WorkoutView {
  //todo should this whole thing be static? TTS as well?
  static const SOUND_EXERCISE = "sound_exercise.mp3";
  static const SOUND_BREAK = "sound_break.mp3";
  static const SOUND_FINISH = "sound_finish.mp3";
  static const SOUND_TICK = "sound_tick.mp3"; // todo use ogg, or debug how tinny it sounds
  static final AudioCache _player = AudioCache();

  @override
  void onBreak(
      int workoutPos, WorkoutExercise nextExercise, int defaultBreakDuration) {
    _player.play(SOUND_BREAK, mode: PlayerMode.LOW_LATENCY);
  }

  @override
  void onCount(int seconds) {
    if (seconds <= AudioHelper.COUNTDOWN)
      _player.play(SOUND_TICK, mode: PlayerMode.LOW_LATENCY);
  }

  @override
  void onExercise(
      int workoutPos, WorkoutExercise exercise, int defaultExerciseDuration) {
    _player.play(SOUND_EXERCISE, mode: PlayerMode.LOW_LATENCY);
  }

  @override
  void onPause() {}

  @override
  void onPlay() {}

  @override
  void onStart(
      int workoutPos, WorkoutExercise nextExercise, int defaultBreakDuration) {}

  void onFinish() {
    _player.play(SOUND_FINISH, mode: PlayerMode.LOW_LATENCY);
  }
}
