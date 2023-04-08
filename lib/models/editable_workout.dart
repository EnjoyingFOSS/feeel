// Copyright (C) 2019 Miroslav Mazel
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

import 'package:feeel/models/editable_workout_exercise.dart';
import 'package:feeel/models/full_workout.dart';

import '../enums/workout_category.dart';
import '../enums/workout_type.dart';

class EditableWorkout {
  static const int _defaultCountodwnDuration = 5;
  static const int _defaultExerciseDuration = 30;
  static const int _defaultBreakDuration = 10;
  static const WorkoutCategory _defaultWorkoutCategory =
      WorkoutCategory.strength;

  late final List<EditableWorkoutExercise> workoutExercises;
  String title;
  int? dbId;
  int countdownDuration;
  int exerciseDuration;
  int breakDuration;
  WorkoutCategory category;
  WorkoutType type;

  EditableWorkout({
    required this.type,
    this.dbId,
    this.title = "",
    List<EditableWorkoutExercise>? initialWorkoutExercises,
    this.category = _defaultWorkoutCategory,
    this.countdownDuration = _defaultCountodwnDuration,
    this.breakDuration = _defaultBreakDuration,
    this.exerciseDuration = _defaultExerciseDuration,
  }) {
    workoutExercises = initialWorkoutExercises ??
        List<EditableWorkoutExercise>.empty(growable: true);
  }

  int getDuration() {
    int duration = (workoutExercises.isNotEmpty)
        ? workoutExercises[0].exerciseDuration ?? exerciseDuration
        : 0;
    for (var i = 1; i < workoutExercises.length; i++) {
      duration += workoutExercises[i].exerciseDuration ?? exerciseDuration;
      duration += workoutExercises[i].breakDuration ?? breakDuration;
    }
    return duration;
  }

  static EditableWorkout fromWorkout(FullWorkout fullWorkout) {
    return EditableWorkout(
        dbId: fullWorkout.workout.id,
        title: fullWorkout.workout.title,
        initialWorkoutExercises: fullWorkout.workoutExercises.map((we) {
          return EditableWorkoutExercise.fromWorkoutExercise(we);
        }).toList(),
        countdownDuration: fullWorkout.workout.countdownDuration,
        breakDuration: fullWorkout.workout.breakDuration,
        exerciseDuration: fullWorkout.workout.exerciseDuration,
        category: fullWorkout.workout.category,
        type: fullWorkout.workout.type);
  }
}