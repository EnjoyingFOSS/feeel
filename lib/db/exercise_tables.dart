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

import 'dart:ui';

import 'package:drift/drift.dart';
import 'package:feeel/enums/equipment_item.dart';
import 'package:feeel/enums/exercise_category.dart';
import 'package:feeel/enums/license.dart';
import 'package:feeel/enums/muscle.dart';
import 'package:feeel/enums/muscle_role.dart';

class NullableListConverter extends TypeConverter<List<String>?, String?> {
  static const _listSeparator = "|";

  const NullableListConverter();

  @override
  List<String>? fromSql(String? fromDb) {
    return fromDb?.isEmpty ?? true ? null : fromDb?.split(_listSeparator);
  }

  @override
  String? toSql(List<String>? value) {
    return value?.isEmpty ?? true ? null : value?.join(_listSeparator);
  }
}

class ListConverter extends TypeConverter<List<String>, String> {
  static const _listSeparator = "|";

  const ListConverter();

  @override
  List<String> fromSql(String fromDb) {
    return fromDb.isEmpty ? [] : fromDb.split(_listSeparator);
  }

  @override
  String toSql(List<String> value) {
    return value.isEmpty ? "" : value.join(_listSeparator);
  }
}

class LocaleConverter extends TypeConverter<Locale, String> {
  static const _localeSeparator = "-";

  const LocaleConverter();

  @override
  Locale fromSql(String fromDb) {
    final localeSplit = fromDb.split(_localeSeparator);

    return localeSplit.length > 1 ? Locale(localeSplit[0], localeSplit[1]) : Locale(localeSplit[0]);
  }

  @override
  String toSql(Locale value) {
    return value.toLanguageTag();
  }
}

class Exercises extends Table {
  IntColumn get wgerId => integer()();
  TextColumn get name => text()();
  TextColumn get aliases =>
      text().map(const NullableListConverter()).nullable()();
  IntColumn get category => intEnum<ExerciseCategory>()();
  TextColumn get description => text().nullable()();
  TextColumn get notes =>
      text().map(const NullableListConverter()).nullable()();
  TextColumn get descLicense => textEnum<License>()();
  TextColumn get descAuthors => text().map(const ListConverter())();
  TextColumn get imageSlug => text().nullable()();
  BoolColumn get headOnly => boolean().withDefault(const Constant(false))();
  BoolColumn get imageFlipped => boolean().withDefault(const Constant(false))();
  TextColumn get imageLicense => text().nullable()();
  BoolColumn get animated => boolean()();

  IntColumn get variationGroup => integer().nullable()();

  @override
  Set<Column>? get primaryKey => {wgerId};
}

// TODO Missing from exercise database
//
// "images": [],
// "videos": [],

class ExerciseTranslations extends Table {
  IntColumn get exercise => integer()();
  TextColumn get locale => text().map(const LocaleConverter())();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  TextColumn get notes =>
      text().map(const NullableListConverter()).nullable()();
  TextColumn get translationLicense => textEnum<License>()();
  TextColumn get translationAuthors => text().map(const ListConverter())();
  TextColumn get aliases =>
      text().map(const NullableListConverter()).nullable()();

  @override
  Set<Column>? get primaryKey => {exercise, locale};
}

class ExerciseMuscles extends Table {
  IntColumn get exercise => integer()();
  IntColumn get muscle => intEnum<Muscle>()();
  IntColumn get role => intEnum<MuscleRole>()();

  @override
  Set<Column>? get primaryKey => {exercise, muscle};
}

@DataClassName("ExerciseEquipmentItem")
class ExerciseEquipment extends Table {
  IntColumn get exercise => integer()();
  IntColumn get equipment => intEnum<EquipmentItem>()();

  @override
  Set<Column>? get primaryKey => {exercise, equipment};
}
