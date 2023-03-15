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

import 'package:feeel/db/database.dart';
// import 'package:feeel/db/db_migration_maps.dart';
import 'package:get_it/get_it.dart';

class FullWorkout {
  final Workout workout;
  final List<WorkoutExercise> workoutExercises;
  final List<Exercise> exercises;
  late int _duration;
  int get duration => _duration;

  static const _workoutKey = 'workout';
  static const _workoutExerciseKey = 'workoutExercises';

  FullWorkout({
    required this.workout,
    required this.workoutExercises,
    required this.exercises,
  }) {
    _duration = (workoutExercises.isNotEmpty)
        ? workoutExercises[0].exerciseDuration ?? workout.exerciseDuration
        : 0;
    for (var i = 1; i < workoutExercises.length; i++) {
      _duration +=
          workoutExercises[i].exerciseDuration ?? workout.exerciseDuration;
      _duration += workoutExercises[i].breakDuration ?? workout.breakDuration;
    }
  }

  static Future<FullWorkout> fromJson(
      Map<String, dynamic> json, DateTime utcMetadataDate) async {
    final workoutExercises =
        (json[_workoutExerciseKey] as List).map((dynamic weJson) {
      final weTemp = WorkoutExercise.fromJson(weJson as Map<String, dynamic>);
      //TODO DOWNGRADE AND UPGRADE BASED ON DOWNLOADED EXERCISE DATA!!!
      // if (FeeelDB.v3_0_0ImportDate.compareTo(utcMetadataDate) > 0) {
      //   //utcMetadataDate is older than v3.0.0 import date
      //   final exercise = DBMigrationMaps.pre300ToCurrentExercises[
      //       weTemp.exercise]!; //todo what to do if null?
      //   return WorkoutExercise(
      //       workoutId: weTemp.workoutId,
      //       orderPosition: weTemp.orderPosition,
      //       exercise: exercise);
      // } else {
      return weTemp;
      // }
    }).toList();
    final exerciseIds = workoutExercises.map((we) => we.exercise).toList();
    return FullWorkout(
        workoutExercises: workoutExercises,
        workout: Workout.fromJson(json[_workoutKey] as Map<String, dynamic>),
        exercises: await GetIt.I<FeeelDB>()
            .queryExercisesFromExerciseIds(exerciseIds));
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        _workoutKey: workout.toJson(),
        _workoutExerciseKey: workoutExercises.map((we) => we.toJson()).toList(),
      };
}
