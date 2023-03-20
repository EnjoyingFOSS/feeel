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

import 'package:drift/drift.dart';
import 'package:feeel/models/editable_workout.dart';
import 'package:feeel/providers/db_provider.dart';
import 'package:feeel/db/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutProviderState {
  final List<Workout> workouts;

  WorkoutProviderState(this.workouts);
}

class WorkoutProviderNotifier extends AsyncNotifier<WorkoutProviderState> {
  @override
  Future<WorkoutProviderState> build() async {
    final db = ref.read(dbProvider);
    return WorkoutProviderState(await _queryAllWorkouts(db));
  }

  Future<void> createOrUpdateWorkout(final EditableWorkout ew) async {
    state = const AsyncValue.loading();

    final db = ref.read(dbProvider);

    await db.createOrUpdateWorkout(ew);

    state = AsyncValue.data(WorkoutProviderState(
        await _queryAllWorkouts(db))); //todo is this too expensive?
  }

  Future<void> deleteWorkout(int workoutId) async {
    state = const AsyncValue.loading();

    final db = ref.read(dbProvider);
    await (db.delete(db.workoutExercises)
          ..where((we) => we.workoutId.equals(workoutId)))
        .go();
    await (db.delete(db.workouts)..where((w) => w.id.equals(workoutId)))
        .go(); //todo what if I passed in workout and just ran delete on that workout?

    state = AsyncValue.data(WorkoutProviderState(
        await _queryAllWorkouts(db))); //todo is this too expensive?
  }

  Future<List<Workout>> _queryAllWorkouts(FeeelDB db) async {
    final workouts = await (db.select(db.workouts)
          ..orderBy([
            (w) => OrderingTerm.desc(w.lastUsed),
            (w) => OrderingTerm.asc(w.id)
          ]))
        .get(); //todo use watch instead?
    return workouts;
  }
}

final workoutProvider =
    AsyncNotifierProvider<WorkoutProviderNotifier, WorkoutProviderState>(
        WorkoutProviderNotifier.new);
