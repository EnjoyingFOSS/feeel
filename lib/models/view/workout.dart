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

import 'package:feeel/db/json_metadata.dart';
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
    _duration = (workoutExercises.isNotEmpty)
        ? workoutExercises[0].duration ?? exerciseDuration
        : 0;
    for (var i = 1; i < workoutExercises.length; i++) {
      _duration += workoutExercises[i].duration ?? exerciseDuration;
      _duration += workoutExercises[i].breakBeforeDuration ?? breakDuration;
    }
  }

  static Future<Workout> fromJson(
      Map<String, dynamic> json, JSONMetadata metadata) async {
    final workoutExercises = List<WorkoutExercise>.empty(growable: true);

    for (final weJson in json['workoutExercises'] as List<dynamic>) {
      final we = await WorkoutExercise.fromJson(
          weJson as Map<String, dynamic>, metadata);
      if (we != null) workoutExercises.add(we);
    }
    return Workout(
      dbId: null,
      title: json['title'] as String,
      workoutExercises: workoutExercises,
      countdownDuration: json['countdownDuration'] as int,
      breakDuration: json['breakDuration'] as int,
      exerciseDuration: json['exerciseDuration'] as int,
      category: WorkoutCategory.fromDBValue(json['category'] as int),
      type: WorkoutType.fromDBValue(json['type'] as int),
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'type': type.dbValue,
        'category': category.dbValue,
        'exerciseDuration': exerciseDuration,
        'breakDuration': breakDuration,
        'countdownDuration': countdownDuration,
        'workoutExercises': workoutExercises.map((we) => we.toJson()).toList(),
      };
}
