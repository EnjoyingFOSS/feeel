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

import 'dart:io';
import 'package:drift/native.dart';
import 'package:feeel/db/default_workouts.dart';
import 'package:feeel/enums/exercise_type.dart';
import 'package:feeel/enums/workout_category.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../enums/workout_type.dart';
import 'default_exercises.dart';
import 'editable_workout.dart';
import 'full_workout.dart';

part 'database.g.dart';

class Exercises extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  IntColumn get type => intEnum<ExerciseType>()(); //todo how to convert this?
  BoolColumn get flipped => boolean().withDefault(const Constant(
      false))(); //todo what's the use of withDefault if constructor requires it anyway?
  BoolColumn get hasSteps =>
      boolean()(); //todo rather than this, point directly to the rowid
  TextColumn get imageSlug => text().nullable()();
  TextColumn get descLicense => text().nullable()();
  TextColumn get imageLicense => text().nullable()();
  BoolColumn get animated => boolean().withDefault(const Constant(false))();

  @override
  Set<Column>? get primaryKey => {id};
}

class ExerciseSteps extends Table {
  IntColumn get exerciseId => integer()();
  IntColumn get orderPosition => integer()();
  TextColumn get imageSlug => text().nullable()();
  TextColumn get voiceHint => text().nullable()();
  IntColumn get stepDuration => integer()();

  @override
  Set<Column>? get primaryKey => {exerciseId, orderPosition};
}

class ExerciseMuscles extends Table {
  IntColumn get exerciseId => integer()();
  IntColumn get muscle => integer()();
  IntColumn get type => integer()();

  @override
  Set<Column>? get primaryKey => {exerciseId, muscle, type};
}

class ExerciseEquipment extends Table {
  IntColumn get exerciseId => integer()();
  IntColumn get equipment => integer()();

  @override
  Set<Column>? get primaryKey => {exerciseId, equipment};
}

class Workouts extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get type => intEnum<WorkoutType>()();
  TextColumn get title => text()();
  IntColumn get category => intEnum<WorkoutCategory>()();
  IntColumn get countdownDuration => integer()();
  IntColumn get exerciseDuration => integer()();
  IntColumn get breakDuration => integer()();
}

class WorkoutExercises extends Table {
  IntColumn get workoutId => integer()();
  IntColumn get orderPosition => integer()();
  IntColumn get exercise => integer()();
  IntColumn get exerciseDuration => integer().nullable()();
  IntColumn get breakDuration => integer().nullable()();

  /// refers to the break before this exercise

  @override
  Set<Column>? get primaryKey => {workoutId, orderPosition};
}

class WorkoutRecords extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  IntColumn get category => integer()();
  DateTimeColumn get workoutStart => dateTime()();
}

class WorkoutExerciseRecords extends Table {
  IntColumn get workoutRecordId => integer()();
  IntColumn get orderPosition => integer()();
  IntColumn get exercise => integer()();
  IntColumn get exerciseDuration => integer()();
  IntColumn get completedDuration => integer()();

  @override
  Set<Column>? get primaryKey => {workoutRecordId, orderPosition};
}

@DriftDatabase(tables: [
  Exercises,
  ExerciseSteps,
  Workouts,
  WorkoutExercises,
  WorkoutRecords,
  WorkoutExerciseRecords
])
class FeeelDB extends _$FeeelDB {
  static const int _databaseVersion = 23;
  static const String _dbFilename = "feeel2.db"; //todo this is temporary

  FeeelDB() : super(_openConnection());

  @override
  int get schemaVersion => _databaseVersion;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
        await _addDefaultExercises();
        await _addDefaultWorkouts();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // EXERCISES
        await m.drop(exercises);
        await m.drop(exerciseSteps);
        await m.create(exercises);
        await m.create(exerciseSteps);
        await _addDefaultExercises();

        // WORKOUTS

        // delete default workouts
        final defaultWorkouts = await (select(workouts)
              ..where((w) => w.type.equals(WorkoutType.bundled.dbValue)))
            .get();

        const currentWorkoutExerciseTableName = 'workout_exercises';
        const pre21WorkoutExerciseTableName = 'workoutExercises';

        if (from < 21) {
          await customStatement(
              "DELETE FROM $pre21WorkoutExerciseTableName WHERE 'workoutType' = 0");
        } else {
          for (final dw in defaultWorkouts) {
            await (delete(workoutExercises)
                  ..where((we) => we.workoutId.equals(dw.id)))
                .go();
          }
        }
        await (delete(workouts)
              ..where((w) => w.type.equals(WorkoutType.bundled.dbValue)))
            .go();

        // add new default workouts
        if (from < 21) {
          m.createTable(workoutExercises);
        }

        await _addDefaultWorkouts();

        // move custom workouts from old table to new table for old versions
        if (from < 21) {
          final customWorkouts = await (select(workouts)
                ..where((w) => w.type.equals(WorkoutType.custom.dbValue)))
              .get();
          for (final cw in customWorkouts) {
            await customStatement(
                "INSERT INTO $currentWorkoutExerciseTableName(workout_id, order_position, exercise, exercise_duration, break_duration) "
                "SELECT workoutId, orderCol, exercise, exerciseDuration, breakDuration "
                "FROM $pre21WorkoutExerciseTableName WHERE 'workoutId' = ${cw.id}");
          }

          await customStatement(
              "DROP TABLE IF EXISTS $pre21WorkoutExerciseTableName");
        }

        //rename columns for the workout table if on older table version; other tables have been newly created
        if (from < 21) {
          await m.alterTable(TableMigration(
            workouts,
            columnTransformer: {
              workouts.countdownDuration: const CustomExpression<void>(
                  'countdownDuration'), //todo is the type important here?
              workouts.exerciseDuration:
                  const CustomExpression<void>('exerciseDuration'),
              workouts.breakDuration:
                  const CustomExpression<void>('breakDuration')
            },
          ));

          // TODO await m.create(workoutRecords);
          // TODO await m.create(workoutExerciseRecords);
        }
      },
    );
  }

  //
  // EXERCISES
  //

  Future<void> _addDefaultExercises() async {
    for (final nse in DefaultExercises.defaultNoStepExercises) {
      await into(exercises).insert(nse);
    }
    for (final s in DefaultExercises.defaultSteps) {
      await into(exerciseSteps).insert(s);
    }
    for (final se in DefaultExercises.defaultStepExercises) {
      await into(exercises).insert(se);
    }
  }

  // Future<FullExercise> queryFullExercise(Exercise e) async {
  //   final steps = (e.hasSteps)
  //       ? await (select(exerciseSteps)..where((s) => s.exerciseId.equals(e.id)))
  //           .get()
  //       : null; //todo change if I will have the rowid pointing to the right item
  //   final equipment = await (select(exerciseEquipment)
  //         ..where((eq) => eq.exerciseId.equals(e.id)))
  //       .get();
  //   final muscles = await (select(exerciseMuscles)
  //         ..where((m) => m.exerciseId.equals(e.id)))
  //       .get();
  //   return FullExercise(
  //       exercise: e, steps: steps, equipment: equipment, muscles: muscles);
  // }

  Future<List<Exercise>> get queryAllExercises => select(exercises).get();

  //   return FullExercise(
  //       exercise: e, steps: steps, equipment: equipment, muscles: muscles);
  // }

  //
  // WORKOUTS
  //

  Future<void> _addDefaultWorkouts() async {
    for (final ew in DefaultWorkouts.defaultEditableWorkouts) {
      await createOrUpdateWorkout(ew);
    }
  }

  Future<List<Workout>> get queryAllWorkouts => select(workouts).get();

  Future<FullWorkout> queryWorkoutByRowId(int rowId) async {
    final w = await (select(workouts)..where((w) => w.rowId.equals(rowId)))
        .getSingle();
    return await queryFullWorkout(w);
  }

  Future<FullWorkout> queryFullWorkout(Workout w) async {
    final wes = await (select(workoutExercises)
          ..where((we) => we.workoutId.equals(w.id)))
        .get();
    final es = await Future.wait(wes.map((we) async => await (select(exercises)
          ..where((e) => e.id.equals(we.exercise)))
        .getSingle()));
    return FullWorkout(workout: w, workoutExercises: wes, exercises: es);
  }

  Future<List<FullWorkout>> queryFullWorkoutsByType(WorkoutType type) async {
    //todo is this really necessary? used only for export...
    final ws = await (select(workouts)
          ..where((w) => w.type.equals(type.dbValue)))
        .get();

    final futureList = ws.map((w) async => queryFullWorkout(w));

    return Future.wait(futureList);
  }

  Future<void> createOrUpdateWorkout(final EditableWorkout ew) async {
    //todo double-check everything; ideally go by categories - R, C, U, D
    if (ew.dbId != null) {
      await (delete(workoutExercises)
            ..where((we) => we.workoutId.equals(ew.dbId)))
          .go();
    }

    final createdRowId = await into(workouts).insertOnConflictUpdate(
        WorkoutsCompanion(
            id: ew.dbId != null ? Value(ew.dbId!) : const Value<int>.absent(),
            type: Value(ew.type.dbValue),
            title: Value(ew.title),
            category: Value(ew.category.dbValue),
            countdownDuration: Value(ew.countdownDuration),
            exerciseDuration: Value(ew.exerciseDuration),
            breakDuration: Value(ew.breakDuration)));

    final insertedItem = await (select(workouts)
          ..where((w) => (ew.dbId != null)
              ? w.id.equals(ew.dbId)
              : w.rowId.equals(createdRowId)))
        .getSingle();

    final ewes = ew.workoutExercises;
    await batch((batch) {
      batch.insertAll(
          workoutExercises,
          List.generate(ewes.length, (i) {
            final ewe = ewes[i];
            return WorkoutExercisesCompanion(
                workoutId: Value(insertedItem.id),
                orderPosition: Value(i),
                exercise: Value(ewe.exerciseId),
                exerciseDuration: Value(ewe.exerciseDuration),
                breakDuration: Value(ewe.breakDuration));
          }, growable: false));
    });
  }

  Future<void> deleteWorkout(int workoutId) async {
    await (delete(workoutExercises)
          ..where((we) => we.workoutId.equals(workoutId)))
        .go();
    await (delete(workouts)..where((w) => w.id.equals(workoutId)))
        .go(); //todo what if I passed in workout and just ran delete on that workout?
  }

  Future<void> _deteleDefaultWorkouts() async {
    final workoutTypeValue = WorkoutType.bundled.dbValue;
    final defaults = await (select(workouts)
          ..where((w) => w.type.equals(workoutTypeValue)))
        .get();

    for (final workout in defaults) {
      await (delete(workoutExercises)
            ..where((we) => we.workoutId.equals(workout.id)))
          .go();
    }

    await (delete(workouts)..where((w) => w.type.equals(workoutTypeValue)))
        .go();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final sqlFile = File(p.join(documentsDirectory.path, FeeelDB._dbFilename));
    return NativeDatabase(sqlFile);
  });
}
