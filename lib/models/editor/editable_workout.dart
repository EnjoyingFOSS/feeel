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
import 'package:feeel/models/view/workout.dart';
import 'package:feeel/models/view/workout_exercise.dart';
import 'package:flutter/widgets.dart';
import 'editor_workout_exercise.dart';

class EditableWorkout {
  List<EditorWorkoutExercise> workoutExercises;
  int countdownDuration;
  int exerciseDuration;
  int breakDuration;
  WorkoutCategory category;
  WorkoutType type;

  final int? dbId;
  String title;

  EditableWorkout(
      {this.dbId,
      this.title = "",
      required this.workoutExercises,
      required this.countdownDuration,
      required this.breakDuration,
      required this.exerciseDuration,
      required this.category,
      required this.type});

  static List<EditorWorkoutExercise> getEditableWorkoutExercises(
          List<WorkoutExercise> exercises) =>
      List.generate(exercises.length,
          (index) => EditorWorkoutExercise(exercises[index], UniqueKey()),
          growable: true);

  static EditableWorkout fromWorkout(Workout workout) => EditableWorkout(
      dbId: workout.dbId,
      title: workout.title,
      workoutExercises: getEditableWorkoutExercises(workout.workoutExercises),
      countdownDuration: workout.countdownDuration,
      breakDuration: workout.breakDuration,
      exerciseDuration: workout.exerciseDuration,
      category: workout.category,
      type: workout.type);

  Workout toWorkout() => Workout(
      dbId: dbId,
      title: title,
      workoutExercises: List.generate(
          workoutExercises.length, (i) => workoutExercises[i].exercise),
      countdownDuration: countdownDuration,
      breakDuration: breakDuration,
      exerciseDuration: exerciseDuration,
      category: category,
      type: type);

  int getDuration() {
    int duration = (workoutExercises.length > 0)
        ? workoutExercises[0].exercise.duration ?? exerciseDuration
        : 0;
    for (var i = 1; i < workoutExercises.length; i++) {
      duration += workoutExercises[i].exercise.duration ?? exerciseDuration;
      duration +=
          workoutExercises[i].exercise.breakBeforeDuration ?? breakDuration;
    }
    return duration;
  }
}
