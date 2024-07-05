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

import 'package:drift/drift.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/models/editable_workout.dart';
import 'package:feeel/providers/db_provider.dart';
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
        await _queryAllWorkouts(db))); //TODO is this too expensive?
  }

  Future<void> deleteWorkout(int workoutId) async {
    state = const AsyncValue.loading();

    final db = ref.read(dbProvider);
    db.deleteWorkout(workoutId);

    state = AsyncValue.data(WorkoutProviderState(
        await _queryAllWorkouts(db))); //TODO is this too expensive?
  }

  Future<List<Workout>> _queryAllWorkouts(FeeelDB db) async {
    final workouts = await (db.select(db.workouts)
          ..orderBy([
            (w) => OrderingTerm.desc(w.cachedLastUse),
            (w) => OrderingTerm.asc(w.id)
          ]))
        .get(); //TODO use watch instead?
    return workouts;
  }
}

final workoutProvider =
    AsyncNotifierProvider<WorkoutProviderNotifier, WorkoutProviderState>(
        WorkoutProviderNotifier.new);
