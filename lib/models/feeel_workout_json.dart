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
import 'package:feeel/models/full_workout.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// TODO save export files, create import/export tests
class FeeelWorkoutJson {
  static const _curMetadataVersion = FeeelDB.dbVersion;

  static const _fullWorkoutKey = 'fullWorkout';
  static const _exerciseDbImportDateKey = 'exerciseDbImport';
  static const _metadataVersionKey =
      'feeelMetadataVersion'; // determines the structure of the metadata file

  final FullWorkout fullWorkout;
  final DateTime exerciseDbUtcImportDate;
  final int metadataVersion;

  FeeelWorkoutJson(
      {required this.fullWorkout,
      required this.exerciseDbUtcImportDate,
      this.metadataVersion = _curMetadataVersion});

  static Future<FeeelWorkoutJson> fromJson(
      Map<String, dynamic> json, Locale locale, WidgetRef ref) async {
    final utcMetadataDate =
        DateTime.parse(json[_exerciseDbImportDateKey] as String);
    return FeeelWorkoutJson(
        fullWorkout: await FullWorkout.fromJson(
            json[_fullWorkoutKey] as Map<String, dynamic>,
            utcMetadataDate,
            locale,
            ref),
        metadataVersion: json[_metadataVersionKey] as int,
        exerciseDbUtcImportDate: utcMetadataDate);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        _metadataVersionKey: metadataVersion,
        _exerciseDbImportDateKey: exerciseDbUtcImportDate.toIso8601String(),
        _fullWorkoutKey: fullWorkout.toJson()
      };
}
