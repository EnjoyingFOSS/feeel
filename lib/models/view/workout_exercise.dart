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

import 'package:feeel/db/json_metadata.dart';

import '../../db/db_helper.dart';
import 'exercise.dart';

class WorkoutExercise {
  final Exercise exercise;
  int? duration;
  int? breakBeforeDuration;

  WorkoutExercise(
      {required this.exercise, this.duration, this.breakBeforeDuration});

  static Future<WorkoutExercise?> fromJson(
      Map<String, dynamic> json, JSONMetadata metadata) async {
    final exercise = await DBHelper.db.queryExercise(DBHelper.getCurExerciseId(
        json['exercise']['dbId'] as int,
        metadata.databaseVersion)); //todo what if a value is null?

    if (exercise != null) {
      return WorkoutExercise(
        exercise: exercise,
        duration: json['duration'] as int?,
        breakBeforeDuration: json['breakBeforeDuration'] as int?,
      );
    } else {
      return null;
    }
  }

  static Map<String, dynamic> _exerciseToJson(
          Exercise
              exercise) => //todo this is silly; DB version should be saved somewhere at top of json file
      <String, dynamic>{'dbId': exercise.dbId, 'exerciseName': exercise.name};

  Map<String, dynamic> toJson() => <String, dynamic>{
        'exercise': _exerciseToJson(exercise),
        'duration': duration,
        'breakBeforeDuration': breakBeforeDuration,
      };
}
