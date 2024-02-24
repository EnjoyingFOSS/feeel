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

import 'package:feeel/db/database.dart';
import 'package:feeel/models/translated_exercise.dart';
import 'package:feeel/providers/db_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:feeel/db/db_migration_maps.dart';

class FullWorkout {
  final Workout workout;
  final List<WorkoutExercise> workoutExercises;
  final List<TranslatedExercise> translatedExercises;
  late int _duration;
  int get duration => _duration;

  static const _workoutKey = 'workout';
  static const _workoutExerciseKey = 'workoutExercises';

  FullWorkout({
    required this.workout,
    required this.workoutExercises,
    required this.translatedExercises,
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

  static Future<FullWorkout> fromJson(Map<String, dynamic> json,
      DateTime utcMetadataDate, Locale locale, WidgetRef ref) async {
    final db = ref.read(dbProvider);
    final workoutExercises =
        (json[_workoutExerciseKey] as List).map((dynamic weJson) {
      final weTemp = WorkoutExercise.fromJson(weJson as Map<String, dynamic>);
      //TODO DOWNGRADE AND UPGRADE BASED ON DOWNLOADED EXERCISE DATA!!!
      // if (FeeelDB.v3_0_0ImportDate.compareTo(utcMetadataDate) > 0) {
      //   //utcMetadataDate is older than v3.0.0 import date
      //   final exercise = DBMigrationMaps.pre300ToCurrentExercises[
      //       weTemp.exercise]!; //TODO what to do if null?
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
        translatedExercises:
            await db.queryTranslatedExercisesFromIds(exerciseIds, locale));
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        _workoutKey: workout.toJson(),
        _workoutExerciseKey: workoutExercises.map((we) => we.toJson()).toList(),
      };
}
