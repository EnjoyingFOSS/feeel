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

import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/view/workout_exercise.dart';

class Workout {
  final List<WorkoutExercise> workoutExercises;
  final int countdownDuration;
  final int exerciseDuration;
  final int breakDuration;
  final WorkoutCategory category;
  final WorkoutType type;
  final int? dbId;
  final String title;
  late int _duration;
  int get duration => _duration;

  Workout(
      {required this.dbId,
      required this.title,
      required this.workoutExercises,
      required this.countdownDuration,
      required this.breakDuration,
      required this.exerciseDuration,
      required this.category,
      required this.type}) {
    _duration = (workoutExercises.length > 0) ? workoutExercises[0].duration ?? exerciseDuration : 0;
    for (var i = 1; i < workoutExercises.length; i++) {
      _duration += workoutExercises[i].duration ?? exerciseDuration;
      _duration += workoutExercises[i].breakBeforeDuration ?? breakDuration;
    }
  }
}
