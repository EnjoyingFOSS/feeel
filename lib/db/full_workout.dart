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

import 'package:feeel/db/database.dart';

class FullWorkout {
  final Workout workout;
  final List<WorkoutExercise> workoutExercises;
  final List<Exercise> exercises;
  late int _duration;
  int get duration => _duration;

  FullWorkout(
      {required this.workout,
      required this.workoutExercises,
      required this.exercises}) {
    _duration = (workoutExercises.isNotEmpty)
        ? workoutExercises[0].exerciseDuration ?? workout.exerciseDuration
        : 0;
    for (var i = 1; i < workoutExercises.length; i++) {
      _duration +=
          workoutExercises[i].exerciseDuration ?? workout.exerciseDuration;
      _duration += workoutExercises[i].breakDuration ?? workout.breakDuration;
    }
  }
}
