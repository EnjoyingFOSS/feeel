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

import 'dart:ui';

import 'package:drift/drift.dart';
import 'package:feeel/utils/locale_util.dart';
import 'package:feeel/models/full_exercise.dart';
import 'package:feeel/providers/db_provider.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/providers/locale_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciseProviderState {
  //TODO not sure if it's best to load all of this into memory at all times...
  final Map<int, FullExercise> primaryLanguageExercises;

  ExerciseProviderState(this.primaryLanguageExercises);
}

class ExerciseProviderNotifier extends AsyncNotifier<ExerciseProviderState> {
  @override
  Future<ExerciseProviderState> build() async {
    final db = ref.read(dbProvider);
    final locale = ref.read(localeProvider);
    return ExerciseProviderState(await _queryPrimaryLanguageFullExercises(
        db, locale ?? LocaleUtil.fallbackLocale));
  }

  Future<Map<int, FullExercise>> _queryPrimaryLanguageFullExercises(
      FeeelDB db, Locale locale) async {
    final exercises = await (db.select(db.exercises)
          ..orderBy([(e) => OrderingTerm.asc(e.name)]))
        .get();
    final fullExercises = await Future.wait(
        exercises.map((e) => db.queryPrimaryLangFullExercise(e, locale)));

    return {for (final fe in fullExercises) (fe).exercise.wgerId: fe};
  }
}

final exerciseProvider =
    AsyncNotifierProvider<ExerciseProviderNotifier, ExerciseProviderState>(
        ExerciseProviderNotifier.new);
