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

// TODO capitalize: commando pull-ups, kettlebell swing, knee raises, one-handed kettlebell curls, BUS DRIVERS, LYING DUMBELL ROW ...

import 'dart:convert';
import 'dart:ui';

import 'package:drift/drift.dart';

import 'dart:io';
import 'package:drift/native.dart';
import 'package:feeel/db/db_migration_maps.dart';
import 'package:feeel/db/bundled_exercises.dart';
import 'package:feeel/db/bundled_workouts.dart';
import 'package:feeel/enums/equipment.dart';
import 'package:feeel/enums/exercise_category.dart';
import 'package:feeel/utils/locale_util.dart';
import 'package:feeel/enums/license.dart';
import 'package:feeel/enums/muscle.dart';
import 'package:feeel/models/editable_workout_record.dart';
import 'package:feeel/enums/exercise_type.dart';
import 'package:feeel/enums/muscle_role.dart';
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/models/full_exercise.dart';
import 'package:feeel/models/full_workout_record.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:feeel/utils/wger_exercise_util.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'package:sqlite3/sqlite3.dart';

import '../enums/workout_type.dart';
import '../models/editable_workout.dart';
import '../models/full_workout.dart';

part 'database.g.dart';

//TODO consider using textEnum instead of intEnum in databases in general

//TODO add cache

class Exercises extends Table {
  static const listSeparator = "|";

  IntColumn get wgerId => integer()();
  TextColumn get name => text()();
  TextColumn get aliases => text().nullable()();

  /// pipe-separated list of aliases
  IntColumn get category => intEnum<ExerciseCategory>()();
  TextColumn get description => text().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get descLicense => textEnum<License>()();
  TextColumn get descAuthors => text()();

  /// pipe-separated list of authors
  TextColumn get imageSlug => text().nullable()();
  IntColumn get type => intEnum<ExerciseType>()(); //TODO how to convert this?
  BoolColumn get flipped => boolean().withDefault(const Constant(
      false))(); //TODO what's the use of withDefault if constructor requires it anyway?
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
  TextColumn get locale => text()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get translationLicense => textEnum<License>()();
  TextColumn get translationAuthors => text()();
  TextColumn get aliases => text().nullable()();

  /// pipe-separated list of aliases

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

@DataClassName("ExerciseEquipmentPiece")
class ExerciseEquipment extends Table {
  IntColumn get exercise => integer()();
  IntColumn get equipment => intEnum<EquipmentPiece>()();

  @override
  Set<Column>? get primaryKey => {exercise, equipment};
}

class Workouts extends Table {
  //TODO FIGURE OUT TRANSLATABLE WORKOUT NAMES!!!
  IntColumn get id => integer().autoIncrement()();
  IntColumn get type => intEnum<WorkoutType>()();
  TextColumn get title => text()();
  TextColumn get translationJson => text().nullable()();
  IntColumn get category => intEnum<WorkoutCategory>()();
  IntColumn get countdownDuration => integer()();
  IntColumn get exerciseDuration => integer()();
  IntColumn get breakDuration => integer()();
  //TODO IntColumn get cachedTotalDuration => integer()();
  DateTimeColumn get cachedLastUse =>
      dateTime().nullable()(); //TODO figure out how timezones fit into this

  /// only used for sorting, may be inconsistent with workout records
}

class WorkoutExercises extends Table {
  //TODO change to also work with sets, reps, etc.
  IntColumn get workoutId => integer()();
  IntColumn get orderPosition => integer()();
  IntColumn get exercise => integer()();
  IntColumn get exerciseDuration => integer().nullable()();
  IntColumn get breakDuration => integer().nullable()();

  /// refers to the break before this exercise

  // BoolColumn get timed => boolean()();
  // IntColumn get goal => integer().nullable()();
  // TextColumn get goalUnit => textEnum<GoalUnit>().nullable()();
  // IntColumn get measure => integer().nullable()();
  // TextColumn get measureUnit => textEnum<MeasureUnit>().nullable()();

  @override
  Set<Column>? get primaryKey => {workoutId, orderPosition};
}

class WorkoutRecords extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  IntColumn get category => intEnum<WorkoutCategory>()();
  IntColumn get completedDuration =>
      integer()(); //potential inconsistency, but faster fetching
  IntColumn get workoutDuration =>
      integer()(); //potential inconsistency, but faster fetching
  DateTimeColumn get workoutStart =>
      dateTime()(); //TODO figure out how timezones fit into this
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
  ExerciseMuscles,
  ExerciseTranslations,
  ExerciseEquipment,
  Workouts,
  WorkoutExercises,
  WorkoutRecords,
  WorkoutExerciseRecords
])
class FeeelDB extends _$FeeelDB {
  //TODO write DB migration tests with test .db files
  static final bundledExerciseImportDate = DateTime(
      2023, 02, 17, 20, 0, 0); //TODO update with each import, store separately

  static const dbVersion = 300;
  static const _dbFilename = "feeel.db";

  static const _v3_0_0 = 300;
  static const _pre3_0_0WorkoutExerciseTableName = 'workoutExercises';

  FeeelDB() : super(_openConnection());

  @override
  int get schemaVersion => dbVersion;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
        await _addAllExercises();
        await _addBundledWorkouts();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // CREATE BACKUP
        final dbFile = await _getDBFile();
        final backupPath = p.join(dbFile.parent.path, "feeel.db.backup");
        final backupFile = await dbFile.copy(backupPath);

        // MIGRATE
        if (from < _v3_0_0) {
          await _migrateFromPre3_0_0(m, backupFile);
        }

        // DELETE BACKUP
        await backupFile.delete();
      },
    );
  }

  //
  // MIGRATION
  //

  Future<void> _migrateFromPre3_0_0(Migrator m, File oldDbFile) async {
    const oldWorkoutTable = "workouts";
    const oldWorkoutExerciseTable = "workoutExercises";
    const oldExerciseTable = "exercises";

    await m.deleteTable(oldWorkoutTable);
    await m.deleteTable(oldWorkoutExerciseTable);
    await m.deleteTable(oldExerciseTable);

    await m.createAll();

    final oldDb = sqlite3.open(oldDbFile.path, mode: OpenMode.readOnly);

    // CUSTOM WORKOUTS

    final oldWorkouts =
        oldDb.select("SELECT * from $oldWorkoutTable WHERE type=?", [
      1 // custom workout type
    ]);

    await batch((batch) {
      batch.insertAll(workouts, oldWorkouts.map((ow) {
        final WorkoutCategory category;
        switch (ow['category'] as int) {
          case 0:
            category = WorkoutCategory.strength;
            break;
          case 1:
            category = WorkoutCategory.stretching;
            break;
          case 2:
            category = WorkoutCategory.cardio;
            break;
          case 3:
            category = WorkoutCategory.other;
            break;
          default:
            category = WorkoutCategory.other;
            break;
        }
        return WorkoutsCompanion(
            id: Value(ow['id'] as int),
            type: const Value(WorkoutType.custom),
            title: Value(ow['title'] as String),
            category: Value(category),
            countdownDuration: Value(ow['countdownDuration'] as int),
            exerciseDuration: Value(ow['exerciseDuration'] as int),
            breakDuration: Value(ow['breakDuration'] as int),
            // cachedTotalDuration:
            //     Value(), // TODO !!! figure out how to sum this !!!
            cachedLastUse: const Value.absent());
      }));
    });

    // CUSTOM WORKOUT EXERCISES

    final oldWorkoutExercises = oldDb
        .select("SELECT * from $oldWorkoutExerciseTable WHERE workoutType=?", [
      1 // custom workout type
    ]);

    await batch((batch) {
      batch.insertAll(workoutExercises, oldWorkoutExercises.map((owe) {
        final newExercise =
            DBMigrationMaps.pre300ToCurrentExercises[(owe['exercise'] as int)]!;
        final exerciseDuration = owe["exerciseDuration"] as int?;
        final breakDuration = owe["breakDuration"] as int?;
        return WorkoutExercisesCompanion(
          workoutId: Value(owe['workoutId'] as int),
          orderPosition: Value(owe['orderCol'] as int),
          exercise: Value(newExercise),
          exerciseDuration: exerciseDuration != null
              ? Value(exerciseDuration)
              : const Value.absent(),
          breakDuration: breakDuration != null
              ? Value(breakDuration)
              : const Value.absent(),
        );
      }));
    });

    // BUNDLED WORKOUTS
    await _addBundledWorkouts();

    // EXERCISES
    await _addAllExercises();

    oldDb.dispose();
  }

  //
  // EXERCISES
  //

  Future<void> _addAllExercises() async {
    final exerciseFileContents =
        await rootBundle.loadString(AssetUtil.getExerciseJson());

    final fullExercises = WgerExerciseUtil.parseWgerJson(exerciseFileContents);

    fullExercises.sort((a, b) => a.exercise.name.compareTo(b.exercise
        .name)); //TODO check if this reflects on how they're actually stored

    for (final fe in fullExercises) {
      try {
        //TODO get rid of the try catches
        //TODO REMOVE AFTER WGER DISALLOWS SAME PRIMARY AND SECONDARY MUSCLES!
        for (final muscle in fe.muscles) {
          await into(exerciseMuscles).insert(muscle);
        }
      } catch (e) {
        print("muscle: ${fe.exercise.wgerId} $e");
      }
      for (final translation
          in fe.translationsByLanguage?.values ?? <ExerciseTranslation>[]) {
        await into(exerciseTranslations).insert(translation);
      }
      try {
        for (final equipmentPiece
            in fe.equipment ?? <ExerciseEquipmentPiece>[]) {
          await into(exerciseEquipment).insert(equipmentPiece);
        }
      } catch (e) {
        print("duplicated equipment: ${fe.equipment} $e");
      }
      await into(exercises).insert(fe.exercise);
    }
  }

  Future<FullExercise> queryPrimaryLangFullExercise(
      //TODO move to ExerciseProvider?
      Exercise exercise,
      Locale locale) async {
    final translation = (locale == LocaleUtil.fallbackLocale)
        ? null
        : await (select(exerciseTranslations)
              ..where((et) =>
                  et.exercise.equals(exercise.wgerId) &
                  et.locale.equals(locale.toLanguageTag())))
            .getSingleOrNull();
    final equipment = await (select(exerciseEquipment)
          ..where((eq) => eq.exercise.equals(exercise.wgerId)))
        .get();
    final muscles = await (select(exerciseMuscles)
          ..where((m) => m.exercise.equals(exercise.wgerId)))
        .get();
    return FullExercise(
        exercise: exercise,
        equipment: equipment,
        muscles: muscles,
        translationsByLanguage:
            translation != null ? {locale: translation} : null);
  }

  Future<List<FullExercise>> queryPrimaryLangFullExercisesFromIds(
      List<int> exerciseIds, Locale locale) async {
    final futureExerciseList = exerciseIds.map((id) =>
        (select(exercises)..where((e) => e.wgerId.equals(id))).getSingle());
    final exerciseList = await Future.wait(futureExerciseList);
    final futureFullExerciseList =
        exerciseList.map((e) => queryPrimaryLangFullExercise(e, locale));
    return await Future.wait(futureFullExerciseList);
  }
  //
  // WORKOUTS
  //

  Future<void> _addBundledWorkouts() async {
    for (final ew in BundledWorkouts.bundledEditableWorkouts) {
      await createOrUpdateWorkout(ew);
    }
  }

  Future<FullWorkout> queryWorkoutByRowId(int rowId, Locale locale) async {
    final w = await (select(workouts)..where((w) => w.rowId.equals(rowId)))
        .getSingle();
    return await queryFullWorkout(w, locale);
  }

  Future<FullWorkout> queryFullWorkout(Workout w, Locale locale) async {
    final wes = await (select(workoutExercises)
          ..where((we) => we.workoutId.equals(w.id)))
        .get();
    final exerciseIds = wes.map((we) => we.exercise).toList();
    final es = await queryPrimaryLangFullExercisesFromIds(exerciseIds, locale);
    return FullWorkout(
        workout: w, workoutExercises: wes, primaryLangFullExercises: es);
  }

  Future<List<FullWorkout>> queryFullWorkoutsByType(
      WorkoutType type, Locale locale) async {
    //TODO is this really necessary? used only for export...
    final ws =
        await (select(workouts)..where((w) => w.type.equalsValue(type))).get();

    final futureList = ws.map((w) async => queryFullWorkout(w, locale));

    return Future.wait(futureList);
  }

  Future<void> createOrUpdateWorkout(final EditableWorkout ew) async {
    //TODO double-check everything; ideally go by categories - R, C, U, D
    if (ew.dbId != null) {
      await (delete(workoutExercises)
            ..where((we) => we.workoutId.equals(ew.dbId!)))
          .go();
    }

    //TODO onConflictUpdate might not return the right rowID

    final createdRowId =
        await into(workouts).insertOnConflictUpdate(WorkoutsCompanion(
      id: ew.dbId != null ? Value(ew.dbId!) : const Value<int>.absent(),
      type: Value(ew.type),
      title: Value(ew.title),
      translationJson: Value(
          ew.translations.isNotEmpty ? jsonEncode(ew.translations) : null),
      category: Value(ew.category),
      countdownDuration: Value(ew.countdownDuration),
      exerciseDuration: Value(ew.exerciseDuration),
      breakDuration: Value(ew.breakDuration),
      // TODO cachedTotalDuration: Value(ew.getDuration())
    ));

    final insertedItem = await (select(workouts)
          ..where((w) => (ew.dbId != null)
              ? w.id.equals(ew.dbId!)
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
                exercise: BundledExercises.notAddedToWgerYet.contains(ewe
                        .exercise) //TODO REMOVE THIS CONDITION AFTER THE DEFAULT EXERCISES HAVE BEEN ADDED!!!!
                    ? const Value(20)
                    : Value(ewe.exercise),
                exerciseDuration: Value(ewe.exerciseDuration),
                breakDuration: Value(ewe.breakDuration));
          }, growable: false));
    });
  }

  Future<int> _setWorkoutLastUsed(int workoutId, DateTime time) {
    return (update(workouts)..where((w) => w.id.equals(workoutId))).write(
      WorkoutsCompanion(
        cachedLastUse: Value(time),
      ),
    );
  }

  Future<void> _deleteBundledWorkouts(int fromDBVersion) async {
    if (fromDBVersion < _v3_0_0) {
      await customStatement(
          "DELETE FROM $_pre3_0_0WorkoutExerciseTableName WHERE 'workoutType' = 0");
    } else {
      final bundledWorkouts = await (select(workouts)
            ..where((w) => w.type.equalsValue(WorkoutType.bundled)))
          .get();

      for (final bw in bundledWorkouts) {
        await (delete(workoutExercises)
              ..where((we) => we.workoutId.equals(bw.id)))
            .go();
      }
    }
    await (delete(workouts)
          ..where((w) => w.type.equalsValue(WorkoutType.bundled)))
        .go();
  }

  Future<List<WorkoutRecord>> get queryAllWorkoutRecords =>
      select(workoutRecords).get();

  Future<FullWorkoutRecord> queryFullWorkoutRecord(
      WorkoutRecord wr, Locale locale) async {
    // TODO fetch exercises or get them from cache?
    final wers = await (select(workoutExerciseRecords)
          ..where((wer) => wer.workoutRecordId.equals(wr.id)))
        .get();
    final es = await Future.wait(wers.map((wer) async =>
        await (select(exercises)..where((e) => e.wgerId.equals(wer.exercise)))
            .getSingle()));
    final fes = await Future.wait(
        es.map((e) => queryPrimaryLangFullExercise(e, locale)));
    return FullWorkoutRecord(
        workoutRecord: wr,
        workoutExerciseRecords: wers,
        primaryLangFullExercises: fes);
  }

  Future<void> recordWorkout(final EditableWorkoutRecord ewr) async {
    await _createWorkoutRecord(ewr);
    await _setWorkoutLastUsed(ewr.workout.id, ewr.workoutStart);
  }

  Future<void> _createWorkoutRecord(final EditableWorkoutRecord ewr) async {
    final wers = ewr.workoutExercises;

    int workoutDuration = 0;
    for (var i = 0; i < wers.length; i++) {
      workoutDuration +=
          wers[i].exerciseDuration ?? ewr.workout.exerciseDuration;
    }

    final createdRowId = await into(workoutRecords).insertOnConflictUpdate(
        WorkoutRecordsCompanion(
            id: const Value<int>.absent(),
            title: Value(ewr.workout.title),
            category: Value(ewr.workout.category),
            workoutStart: Value(ewr.workoutStart),
            completedDuration: Value(ewr.completedDurations
                .reduce((value, element) => value + element)),
            workoutDuration: Value(workoutDuration)));

    final insertedItem = await (select(workoutRecords)
          ..where((wr) => (ewr.dbId != null)
              ? wr.id.equals(ewr.dbId!)
              : wr.rowId.equals(createdRowId)))
        .getSingle();

    await batch((batch) {
      batch.insertAll(
          workoutExerciseRecords,
          List.generate(wers.length, (i) {
            final wer = wers[i];
            return WorkoutExerciseRecordsCompanion(
              workoutRecordId: Value(insertedItem.id),
              orderPosition: Value(i),
              exercise: Value(wer.exercise),
              exerciseDuration:
                  Value(wer.exerciseDuration ?? ewr.workout.exerciseDuration),
              completedDuration: Value(ewr.completedDurations[i]),
            );
          }, growable: false));
    });
  }

  static Future<File> _getDBFile() async {
    final documentsDir = await getApplicationDocumentsDirectory();
    return File(p.join(documentsDir.path, _dbFilename));
  }

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final sqlFile = await _getDBFile();
      return NativeDatabase(sqlFile);
    });
  }
}
