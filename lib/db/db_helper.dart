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

import 'dart:async';
import 'dart:io';
import 'package:feeel/enums/exercise_type.dart';
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/models/view/exercise.dart';
import 'package:feeel/models/view/workout.dart';
import 'package:feeel/models/view/workout_exercise.dart';
import 'package:feeel/models/view/workout_listed.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class _Exercises {
  static const int JUMPING_JACKS = 1,
      WALL_SIT = 2,
      PUSH_UPS = 3,
      AB_CRUNCHES = 4,
      STEP_UPS = 5,
      SQUATS = 6,
      CHAIR_DIPS = 7,
      PLANK = 8,
      HIGH_KNEES = 9,
      LUNGES = 10,
      PUSH_UP_ROTATIONS = 11,
      SIDE_PLANK_L = 12,
      SIDE_PLANK_R = 13,
      SIDE_SPLIT_SQUATS_L = 14,
      BULGARIAN_SPLIT_SQUATS_L = 15,
      BULGARIAN_SPLIT_SQUATS_R = 16,
      // PISTOL_SQUATS_L = 17,
      // PISTOL_SQUATS_R = 18,
      KNEELING_KICKBACKS = 19,
      CALF_RAISES_L = 20,
      CALF_RAISES_R = 21,
      SIDE_SPLIT_SQUATS_R = 22,
      SPLIT_SQUATS_L = 23,
      SPLIT_SQUATS_R = 24;
  // JUMP_ROPE_BASIC = 25,
  // ARM_CIRCLES_FW = 26,
  // PIKE_PUSHUPS = 27,
  // MOUNTAIN_CLIMBERS = 28,
  // FOURCOUNT_BURPEES = 29,
  // NO_PUSHUP_BURPEES = 30,
  // SQUAT_THRUSTS = 31,
  // REVERSE_LUNGES = 32,
  // LEG_RAISES = 33,
  // FLOOR_DIPS = 34, // v2.2.0
  // HIGH_PLANK = 35,
  // ARM_CIRCLES_BW = 36,
  // CHILDS_POSE = 37,
  // PULL_UP = 38,
  // KETTLEBELL_DEADLIFT=39,
  // SUMO_SQUAT=40,
  // SHOULDER_ROTATION_FW = 41,
  // SHOULDER_ROTATION_BW = 42,
  // SHOULDER_SHRUG = 43,
  // CHIN_TUCK = 44,
  // HEAD_TURNS = 45;

  // BACK_NECK_STRETCH = 4?,
  // LATERAL_NECK_STRETCH_LEFT = 4?,
  // LATERAL_NECK_STRETCH_RIGHT = 4?,
  // FRONT_NECK_STRETCH = 4?,
  // BACK_AND_LATERAL_NECK_STRETCH_LEFT = 4?,
  // BACK_AND_LATERAL_NECK_STRETCH_RIGHT = 4?,
  // CHIN_TUCK_WITH_FLEXION_WITH_ROTATION = 4?,
}

class TimingDefinition {
  final int id;
  final int? breakDuration;
  final int? exerciseDuration;

  TimingDefinition(this.id,
      {this.exerciseDuration = null, this.breakDuration = null});
}

class DBHelper {
  DBHelper._();
  static final DBHelper db = DBHelper._();
  static Database? _database;

  static const String _DB_FILE = "feeel.db";
  static const String _WORKOUT_TABLE = 'workouts';
  static const String _EXERCISE_TABLE = 'exercises';
  static const String _WORKOUT_EXERCISE_TABLE = 'workoutExercises';

  static const String _ID_COL = 'id';
  static const String _TYPE_COL = 'type';
  static const String _TITLE_COL = 'title';
  static const String _WORKOUT_ID_COL = 'workoutId';
  static const String _WORKOUT_TYPE_COL = 'workoutType';
  static const String _CATEGORY_COL = 'category';
  static const String _ORDER_COL = 'orderCol';
  static const String _NAME_COL = 'name';
  static const String _DESCRIPTION_COL = 'description';
  static const String _IMAGE_SLUG_COL = 'image';
  static const String _IMAGE_LICENSE_COL = 'imageLicense';
  static const String _IMAGE_AUTHOR_COL = 'imageAuthor';
  static const String _EXERCISE_COL = 'exercise';
  static const String _COUNTDOWN_DURATION_COL = 'countdownDuration';
  static const String _BREAK_DURATION_COL = 'breakDuration';
  static const String _EXERCISE_DURATION_COL = 'exerciseDuration';
  static const String _FLIPPED_COL = 'flipped';

  static const int _DEFAULT_COUNTDOWN_DURATION = 5;
  static const int _DEFAULT_EXERCISE_DURATION = 30;
  static const int _DEFAULT_BREAK_DURATION = 10;
  static const int _DATABASE_VERSION = 19;

  Future<Database> _createDB() async {
    String path = await getPath();

    if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
      sqfliteFfiInit();
      return await databaseFactoryFfi.openDatabase(path,
          options: OpenDatabaseOptions(
              version: _DATABASE_VERSION,
              onOpen: (db) {},
              onCreate: _onCreate,
              onUpgrade: _onUpgrade,
              onDowngrade: _onUpgrade));
    } else {
      return await openDatabase(path,
          version: _DATABASE_VERSION,
          onOpen: (db) {},
          onCreate: _onCreate,
          onUpgrade: _onUpgrade,
          onDowngrade: _onUpgrade);
    }
  }

  Future<void> _onCreate(Database db, int version) async {
    await _createExerciseTable(db);
    await _createWorkoutTable(db);
    await _createWorkoutExerciseTable(db);
    // todo history table with a history of workouts

    await _addExercises(db);
    await _addDefaultWorkouts(db);
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    await db.execute("DROP TABLE IF EXISTS " + _EXERCISE_TABLE);
    await _createExerciseTable(db);
    await _addExercises(db);

    await _deleteDefaultWorkouts(db);

    if (oldVersion < 19) {
      await _migrateWorkoutExercises(db);
    }

    await _addDefaultWorkouts(db);

    if (oldVersion < 5) {
      await _removeLegWorkoutCategory(db);
    }
  }

  Future<void> _migrateWorkoutExercises(Database db) async {
    final oldTable = "tempWorkoutExercises";
    await db
        .execute("ALTER TABLE $_WORKOUT_EXERCISE_TABLE RENAME TO $oldTable");
    await _createWorkoutExerciseTable(db);
    final entries = await db.query(oldTable);
    for (final entry in entries) {
      await db.insert(_WORKOUT_EXERCISE_TABLE, entry);
    }
    await db.execute("DROP TABLE IF EXISTS " + oldTable);
  }

  Future<void> _createExerciseTable(Database db) async => await db.execute(
      "CREATE TABLE $_EXERCISE_TABLE ("
      "$_ID_COL INTEGER PRIMARY KEY, "
      "$_NAME_COL TEXT, "
      "$_DESCRIPTION_COL TEXT, "
      "$_TYPE_COL INTEGER NOT NULL, "
      "$_FLIPPED_COL INTEGER NOT NULL, "
      "$_IMAGE_SLUG_COL TEXT, " // todo what do I get from the server, really? actually, should split this up!
      "$_IMAGE_AUTHOR_COL TEXT, "
      "$_IMAGE_LICENSE_COL INTEGER, "
      "$_CATEGORY_COL INTEGER" //todo REMOVE THIS COLUMN
      ")");

  Future<void> _createWorkoutTable(Database db) async =>
      await db.execute("CREATE TABLE $_WORKOUT_TABLE ( "
          "$_ID_COL INTEGER NOT NULL, "
          "$_TYPE_COL INTEGER NOT NULL, "
          "$_TITLE_COL TEXT NOT NULL, "
          "$_CATEGORY_COL INTEGER NOT NULL, "
          "$_COUNTDOWN_DURATION_COL INTEGER NOT NULL, "
          "$_EXERCISE_DURATION_COL INTEGER NOT NULL, "
          "$_BREAK_DURATION_COL INTEGER NOT NULL, " // todo lastUsed as date
          "PRIMARY KEY($_ID_COL,$_TYPE_COL)"
          ")");

  Future<void> _createWorkoutExerciseTable(Database db) async =>
      await db.execute("CREATE TABLE $_WORKOUT_EXERCISE_TABLE ("
          "$_WORKOUT_ID_COL INTEGER NOT NULL, "
          "$_WORKOUT_TYPE_COL INTEGER NOT NULL, "
          "$_ORDER_COL INTEGER NOT NULL, "
          "$_EXERCISE_COL INTEGER NOT NULL, "
          "$_EXERCISE_DURATION_COL INTEGER, "
          "$_BREAK_DURATION_COL INTEGER, "
          "PRIMARY KEY($_WORKOUT_ID_COL,$_WORKOUT_TYPE_COL,$_ORDER_COL)"
          ")");

  Future<void> _addDefaultWorkouts(Database db) async {
    await _createWorkoutFromList(
      db,
      "Scientific 7 minute workout",
      WorkoutCategory.STRENGTH,
      [
        _Exercises.JUMPING_JACKS,
        _Exercises.WALL_SIT,
        _Exercises.PUSH_UPS,
        _Exercises.AB_CRUNCHES,
        _Exercises.STEP_UPS,
        _Exercises.SQUATS,
        _Exercises.CHAIR_DIPS,
        _Exercises.PLANK,
        _Exercises.HIGH_KNEES,
        _Exercises.LUNGES,
        _Exercises.PUSH_UP_ROTATIONS,
        _Exercises.SIDE_PLANK_L,
        _Exercises.SIDE_PLANK_R,
      ],
    );

    // await _createWorkoutFromTupleList(
    //   db,
    //   "Scientific 7 minute workout",
    //   WorkoutCategory.STRENGTH,
    //   [
    //     TimingDefinition(_Exercises.JUMPING_JACKS),
    //     TimingDefinition(_Exercises.WALL_SIT),
    //     TimingDefinition(_Exercises.PUSH_UPS),
    //     TimingDefinition(_Exercises.AB_CRUNCHES),
    //     TimingDefinition(_Exercises.STEP_UPS),
    //     TimingDefinition(_Exercises.SQUATS),
    //     TimingDefinition(_Exercises.CHAIR_DIPS),
    //     TimingDefinition(_Exercises.PLANK),
    //     TimingDefinition(_Exercises.HIGH_KNEES),
    //     TimingDefinition(_Exercises.LUNGES),
    //     TimingDefinition(_Exercises.PUSH_UP_ROTATIONS),
    //     TimingDefinition(_Exercises.SIDE_PLANK_L, exerciseDuration: 15),
    //     TimingDefinition(_Exercises.SIDE_PLANK_R,
    //         breakDuration: 5, exerciseDuration: 15)
    //   ],
    // );

    await _createWorkoutFromList(
      db,
      "Leg workout",
      WorkoutCategory.STRENGTH,
      [
        _Exercises.SPLIT_SQUATS_L,
        _Exercises.SPLIT_SQUATS_R,
        _Exercises.SIDE_SPLIT_SQUATS_L,
        _Exercises.SIDE_SPLIT_SQUATS_R,
        _Exercises.BULGARIAN_SPLIT_SQUATS_L,
        _Exercises.BULGARIAN_SPLIT_SQUATS_R,
        _Exercises.SQUATS,
        _Exercises.KNEELING_KICKBACKS,
        _Exercises.CALF_RAISES_L,
        _Exercises.CALF_RAISES_R
      ],
    );

    // await _createWorkoutFromTupleList(
    //   //todo iron out timing
    //   db,
    //   "Neck and shoulder stretches",
    //   WorkoutCategory.STRETCHING,
    //   [
    //     //todo 15 as the default here?
    //     TimingDefinition(_Exercises.CHIN_TUCK),
    //     TimingDefinition(_Exercises.ARM_CIRCLES_FW,
    //         exerciseDuration: 15), //should be to from end, actually
    //     TimingDefinition(_Exercises.ARM_CIRCLES_BW,
    //         breakDuration: 5, exerciseDuration: 15),
    //     TimingDefinition(_Exercises.HEAD_TURNS),
    //     TimingDefinition(_Exercises.BACK_NECK_STRETCH, exerciseDuration: 20),
    //     TimingDefinition(_Exercises.LATERAL_NECK_STRETCH_LEFT,
    //         exerciseDuration: 35),
    //     TimingDefinition(_Exercises.LATERAL_NECK_STRETCH_RIGHT,
    //         exerciseDuration: 35),
    //     TimingDefinition(_Exercises.SHOULDER_SHRUG),
    //     TimingDefinition(_Exercises.FRONT_NECK_STRETCH),
    //     TimingDefinition(_Exercises.BACK_AND_LATERAL_NECK_STRETCH_LEFT,
    //         exerciseDuration: 8),
    //     TimingDefinition(_Exercises.BACK_AND_LATERAL_NECK_STRETCH_RIGHT,
    //         exerciseDuration: 8),
    //     TimingDefinition(_Exercises.CHIN_TUCK_WITH_FLEXION_WITH_ROTATION,
    //         exerciseDuration: 18),
    //     TimingDefinition(_Exercises.SHOULDER_ROTATION_FW, exerciseDuration: 15),
    //     TimingDefinition(_Exercises.SHOULDER_ROTATION_BW,
    //         breakDuration: 5, exerciseDuration: 15),
    //   ],
    // );
  }

  Future<void> _addExercises(Database db) async {
    // order CANNOT BE CHANGED, as that would effect custom workouts
    await _createExercise(db,
        name: "Jumping jacks",
        description:
            "1. Stand with feet together and arms at the sides\n2. Jump to a position with the legs spread wide and the hands touching overhead\n3. Repeat",
        imageSlug: "exercise_jumpingjacks.webp");

    await _createExercise(db,
        name: "Wall sit",
        description:
            "1. Lean against the wall, facing forward and with feet planted firmly on the ground, shoulders width apart and about 2 feet away from the wall\n2. Slide down the wall, keeping the back pressed to it, until legs are at a right angle. The knees should be directly above the ankles\nQuadricep pain is normal, stop if feeling pain in the knee or kneecap",
        imageSlug: "exercise_wallsit.webp");

    await _createExercise(db,
        name: "Push-ups",
        description:
            "Starting position:\nGet into the starting push-up position, with your hands and toes touching the ground and back, arms and legs straight. To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.\n\nSteps:\n1. Bend at the elbows until your chest almost touches the ground, making sure your back is straight at all times.\n2. Use your arms to lift yourself back up to starting position.\n3. Repeat.",
        imageSlug: "exercise_pushup.webp");

    await _createExercise(db,
        name: "Crunches",
        description:
            "1. Lie down face up on the floor with knees bent.\n2. Curl the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.\n3. Repeat",
        imageSlug: "exercise_abcrunch.webp");

    await _createExercise(db,
        name: "Step-ups",
        description:
            "1. Stand facing a chair\n2. Step up onto the chair\n3. Step off the chair\n4. Repeat",
        imageSlug: "exercise_stepup.webp");

    await _createExercise(db,
        name: "Squats",
        description:
            "1. Stand with feet shoulder-width apart\n2. Move the hips back and bend the knees and hips to lower the torso\n3. Repeat",
        imageSlug: "exercise_squat.webp");

    await _createExercise(db,
        name: "Chair dips",
        description:
            "1. Sit down on the front edge of a chair, back straight, hands holding the front edge\n2. Still holding the edge of the chair, arms extended, lift your butt and walk forward slightly so that it is a few inches from the chair.\n3. Slowly lower your body, keeping the back straight, until arms are at a right angle\n4. Raise your body again to the previous position, arms extended\n5. Repeat steps 3 and 4",
        imageSlug: "exercise_tricepsdip.webp");

    await _createExercise(db,
        name: "Forearm plank",
        description:
            "Starting position:\n1. Start down on all fours.\nArms should bent at a right angle, with shoulders right over elbows.\nBack should be straight, the whole body in a straight line.\n\nSteps:\n1. Hold this position.",
        imageSlug: "exercise_plank.webp");

    await _createExercise(db,
        name: "High knees",
        description:
            "1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace",
        imageSlug: "exercise_highknees.webp");

    await _createExercise(db,
        name: "Lunges",
        description:
            "1. Stand with back straight\n2. Take a large step forward with your left leg\n3. Bring your pelvis down until you almost touch the floor with your right knee\n4. Bring your pelvis back up\n5. Return to standing position by stepping back\n6. Repeat, switching legs each time",
        imageSlug: "exercise_lunge.webp");

    await _createExercise(db,
        name: "Push-up rotations",
        description:
            "1. Do a standard push-up:\n1.a Lie down on your stomach\n1.b Place your hands near your ears\n1.c Use your arms to lift your stomach up until the arms are straight, keeping the back straight\n1.d Bend arms until chest almost touches the ground, making sure the back is straight\n1.e Lift your stomach up again, returning to step 3\n2. Rotate your body to the side so that the back is straight, the bottom hand supporting the body is fully extended, and only the bottom hand and foot touch the floor\n3. Repeat, changing sides at step 2 each time",
        imageSlug: "exercise_pushuprotation.webp");

    final sidePlankDesc =
        "1. Lie down on your side, with your bottom elbow at a right angle, arm sticking out\n2. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line\n3. Hold this position";

    await _createExercise(db,
        name: "Side plank left",
        description: sidePlankDesc,
        imageSlug: "exercise_sideplank.webp");

    await _createExercise(db,
        name: "Side plank right",
        description: sidePlankDesc,
        flipped: true,
        imageSlug: "exercise_sideplank.webp");

    final sideLungeDesc =
        "1. Stand tall and take a wide lateral stride, just greater than shoulder width.\n2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.\n3. Push back to the starting position and repeat.";

    await _createExercise(db,
        name: "Side split squats left",
        description: sideLungeDesc,
        flipped: true,
        imageSlug: "exercise_sidesplitsquat.webp");

    final bulgarianSquatsDesc =
        "1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.\n2. Bend the front knee, balancing with arms until the back knee almost touches the ground\n3. Push back to the starting position and repeat.";

    await _createExercise(db,
        name: "Bulgarian split squats left",
        description: bulgarianSquatsDesc,
        imageSlug: "exercise_bulgariansplitsquat.webp");

    await _createExercise(db,
        name: "Bulgarian split squats right",
        description: bulgarianSquatsDesc,
        flipped: true,
        imageSlug: "exercise_bulgariansplitsquat.webp");
    final pistolSquatDesc =
        "1. Stand on one leg, with your other leg straight and slightly forward.\n2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.\n3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.\n4. Repeat";

    await _createExercise(db,
        name: "Pistol squats left",
        description: pistolSquatDesc,
        flipped: true,
        imageSlug: "exercise_pistolsquat.webp");

    await _createExercise(db,
        name: "Pistol squats right",
        description: pistolSquatDesc,
        imageSlug: "exercise_pistolsquat.webp");

    await _createExercise(db,
        name: "Kneeling kickbacks",
        description:
            "1. Get down on all fours.\n2. Push one foot back until fully extended, concentrating on the gluteus muscles.\n3. Stay for one second, then return to the initial position.\n4. Repeat, alternating feet",
        imageSlug: "exercise_kneelingkickback.webp");

    final singleLegCalfRaiseDesc =
        "1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.\n2. Lift your heels until you're standing on toes.\n3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.";

    await _createExercise(db,
        name: "Left leg calf raises",
        description: singleLegCalfRaiseDesc,
        imageSlug: "exercise_singlelegcalfraise.webp");

    await _createExercise(db,
        name: "Right leg calf raises",
        flipped: true,
        description: singleLegCalfRaiseDesc,
        imageSlug: "exercise_singlelegcalfraise.webp");

    await _createExercise(db,
        name: "Side split squats right",
        description: sideLungeDesc,
        imageSlug: "exercise_sidesplitsquat.webp");

    final splitSquatsDesc =
        "1. Stand with back straight\n2. Take a large step forward with your left leg\n3. Bring your pelvis down until you almost touch the floor with your right knee\n4. Bring your pelvis back up\n5. Repeat from step 3.";

    await _createExercise(db,
        name: "Split squats left",
        description: splitSquatsDesc,
        imageSlug: "exercise_splitsquat.webp");

    await _createExercise(db,
        name: "Split squats right",
        flipped: true,
        description: splitSquatsDesc,
        imageSlug: "exercise_splitsquat.webp");

    await _createExercise(db,
        name: "Jump rope: basic jumps",
        description:
            "This exercise requires a jump rope. Make sure the rope length is adjusted to your height. One way to check is to grab both handles with one hand and stand on the middle of the rope hanging on the ground with one foot. If the rope (excluding the handles) reaches just below your chest, its length is right. A shorter rope would be hazardous, as you might hit yourself, and a longer rope would make for bad form.\n1. Put your feet close together, bend the knees a bit, keep your head and body straight, keep elbows in, open your arms.\n2. Spin only your wrists with enough force to make the rope spin.\n3. Jump just high enough to pass the rope below your feet.\n4. Repeat from step 2.",
        imageSlug: "exercise_jumpropebasic.webp");

    await _createExercise(db,
        name: "Forward arm circles",
        description:
            "1. Stand up tall with your back straight.\n2. Keeping your arms straight, bring them in front of you, move them down, behind your back, then over your head, and back to the initial position.\n3. Keep circling your arms as described in step 2.",
        imageSlug: "exercise_armcircles_fw.webp");

    await _createExercise(db,
        name: "Pike push-ups",
        description:
            "Staring position:\nDownward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.\nYou can get to this position by walking your hands back from a high plank.\n\nSteps:\n1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.\n2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.\n3. Repeat.",
        imageSlug: "exercise_pikepushup.webp");

    await _createExercise(db,
        name: "Mountain climbers",
        description:
            "Starting position:\nStart in the upright push-up position, or the high plank.\nHands should be directly under your shoulders.\nKeep your head in line with your back, facing the floor.\nFeet should be about hip-width apart.\n\nSteps:\n1. Move one knee toward the center of your body, towards your elbows, keeping the other leg extended.\n2. In a quick jumping movement, straighten the bent leg out and pull the other knee toward your body.\n3. Keep repeating step 2, alternating legs.\n\nNotes:\nThroughout the exercise, your back should remain as straight as possible – avoid a hump or a sagging back.",
        imageSlug: "exercise_mountainclimber.webp");

    await _createExercise(db,
        name: "4-count burpees",
        description:
            "Starting position:\nStand straight, feet hip-width apart.\n\nSteps:\n1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.\n2. Keeping your hands on the floor, jump your legs backward into high plank position.\n3. Jump your feet forward to return to the squat position.\n4. Repeat.",
        imageSlug: "exercise_4countburpee.webp");

    await _createExercise(db,
        name: "No push-up burpees",
        description:
            "Starting position:\nStand straight, feet hip-width apart.\n\nSteps:\n1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.\n2. Keeping your hands on the floor, jump your legs backward into high plank position.\n3. Jump your feet forward to return to the squat position.\n4. Jump up.\n5. Repeat.",
        imageSlug: "exercise_nopushupburpee.webp");

    await _createExercise(db,
        name: "Squat thrusts",
        description:
            "Starting position:\nStart in high plank position: back, arms, and legs straight and hands shoulder-width apart.\n\nSteps:\n1. Jump your feet forward between your arms, keeping your back flat.\n2. Keeping your hands on the floor, jump your legs back into high plank position.\n3. Repeat.",
        imageSlug: "exercise_squatthrust.webp");

    await _createExercise(db,
        name: "Reverse lunges",
        description:
            "Starting position:\nStand straight, feet hip-width apart.\n\nSteps:\n1. Step backward with one leg so it can bend comfortably to a 90 degree angle.\n2. Slowly bend both knees to form 90 degree angles.\n3. Return to the starting position.\n4. Repeat, alternating legs.",
        imageSlug: "exercise_reverselunge.webp");

    await _createExercise(db,
        name: "Leg raises",
        description:
            "Starting position:\nLie down on your back, feet together, arms by your sides.\n\nSteps:\n1. Bend your knees, then straighten them to point straight up.\n2. Keeping your legs straight, lower them down together without touching the floor. The lower you go, the more intense the exercise.\n3. Raise both legs together to point straight up again.\n4. Repeat from step 2.",
        imageSlug: "exercise_legraise.webp");

    await _createExercise(db,
        name: "Floor dips",
        description:
            "Starting position:\nSit with your arms behind you, supporting your back.\nYour fingers should point forward.\nYour knees should be bent, feet together.\n\nSteps:\n1. Raise your hips off the ground, straightening your arms.\n2. Bend your elbows, bringing your hips down.\n3. Straighten your arms, returning to the previous position.\n4. Repeat steps 2 and 3.\n\nNotes:\nThe exercise's difficulty depends on how high you bring your hips.",
        imageSlug: "exercise_floordip.webp");

    await _createExercise(db,
        name: "High plank",
        description:
            "Starting position:\nGet into the high plank position: your hands and toes should be touching the ground, your back, arms and legs should be straight.\nTo get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.\n\nSteps:\n1. Maintain the starting position for the entire duration of the exercise.",
        imageSlug: "exercise_highplank.webp");

    await _createExercise(db,
        name: "Backward arm circles",
        description:
            "1. Stand up tall with your back straight.\n2. Keeping your arms straight, bring them in front of you, raise them over your head, then continue the motion behind your back and down to the initial position.\n3. Keep circling your arms as described in step 2.",
        imageSlug: "exercise_armcircles_bw.webp");

    await _createExercise(db,
        name: "Child's pose",
        description:
            "Starting position:\nStart on all fours, knees, toes, and hands touching the ground. Your two big toes should be touching.\n\nSteps:\n1. Move your knees so that they're about hip-width apart.\n2. On an exhale, move your pelvis back to sit on your heels. Your hands should still be touching the ground.\n3. Relax your upper body, lowering your forehead to the floor and letting your hands move forward naturally.\n4. Stay in this pose.\n\nTips:\n* To leave the pose, walk your arms back under your shoulders and move your upper body up into a seated position.",
        imageSlug: "exercise_childspose.webp");

    await _createExercise(db,
        name: "Pull-ups",
        description:
            "Starting position:\nStart by hanging from the pull-up bar, palms facing away and feet off the floor.\nYour hands should be slightly wider than shoulder-width apart. Only slightly so, so that elbows are still in front of the body rather than squarely to the side.\nYour body should be straight and pointed slightly forward. Your arms should be extended.\n\nSteps:\n1. Use your strength to pull your body up evenly, bringing your chest closer to the pull-up bar and your chin just above it. Do NOT lift yourself up using momentum, such as kicking.\n2. Carefully lower your body back down to starting position.\n3. Repeat.\n\nTips:\n- To do pull-ups correctly, you must first build up strength in several key areas, including shoulders, arms, and abs. Start with pull-ups only after you have built up enough strength with other exercises.",
        imageSlug: "exercise_pullup.webp");

    await _createExercise(db,
        name: "Kettlebell deadlifts",
        description:
            "Starting position:\nStand hip-width apart, with your kettlebell centered between your ankles. Your back should be straight, your head facing forward.\n\nSteps:\n1. Hinge at the hips and slightly bend at the knees to put your hands on the kettlebell handles. Your back should be straight as you perform the movement.\n2. Grab the kettlebell handles, with your hands pushing in opposite directions as if to pull the handle apart.\n3. While contacting your abs and glutes, stand straight up.\n4. Hinge at the hips again to bring the kettlebell back down, similarly to step 1.\n5. Repeat from step 3.\n\nTips:\n* Be sure you're performing the movements correctly, as doing otherwise can lead to injury. For example, do not squat instead of hinging at the hips, do not round your back while reaching for the kettlebell, and do not lean back while standing up.",
        imageSlug: "exercise_kettlebelldeadlift.webp");

    await _createExercise(db,
        name: "Sumo squats",
        description:
            "Starting position:\nStand with legs wide and toes turned outwards.\n\nSteps:\n1. Slowly sink down by bending your knees out. Reach arms forward. Keep your head, chest and hips in a straight line. Squeeze your glutes.\n2. Push back up into starting position.\n3. Repeat this exercise in a pulsing motion.",
        imageSlug: "exercise_sumosquat.webp");

    final shoulderRotationDesc =
        "Starting position:\nSit or stand with your back straight.\n\nSteps:\n1. Place your hands on your shoulders.\n2. Repeatedly rotate both shoulder joints in a circular motion at a moderate pace.";

    await _createExercise(db,
        name: "Forward shoulder rotation",
        type: ExerciseType.HEAD,
        description: shoulderRotationDesc,
        imageSlug: "exercise_shoulderrotation_fw.webp");

    await _createExercise(db,
        name: "Backward shoulder rotation",
        type: ExerciseType.HEAD,
        description: shoulderRotationDesc,
        imageSlug: "exercise_shoulderrotation_bw.webp");

    await _createExercise(db,
        name: "Chin tuck",
        type: ExerciseType.HEAD,
        description:
            "Starting position:\nSit or stand with your back straight.\n\nSteps:\n1. Use fingers on your chin to slowly tuck your chin in, moving your head back to align it with your spine.\n2. Hold for 5 seconds.\n3. Go back to normal head position and repeat.",
        imageSlug: "exercise_chintuck.webp");

    await _createExercise(db,
        name: "Shoulder shrugs",
        type: ExerciseType.HEAD,
        description:
            "Starting position:\nSit or stand with your back straight.\n\nSteps:\n1. Lift shoulders straight up as far as possible and hold for 5 sec.\n2. Release shoulders back down to a relaxed position.\n3. Repeat.",
        imageSlug: "exercise_shouldershrug.webp");

    await _createExercise(db,
        name: "Head turns",
        type: ExerciseType.HEAD,
        description:
            "Starting position:\nSit or stand with your back straight and shoulders down.\n\nSteps:\n1. Sit or stand up straight, shoulders dropped.\n2. Turn your head to the side as far as possible. Stop when you hit a barrier and hold for 5 seconds.\n3. Return to center position and repeat, changing sides.",
        imageSlug: "exercise_headturn.webp");

    // await _createExercise(db,
    //     name: "Back neck stretch", //todo or flexion?
    //     type: ExerciseType.HEAD,
    //     description:
    //         "Starting position:\nSit upright on a chair or a firm pillow.\n\nSteps:\n1. Breathe out and tilt your head forward, chin to chest, putting hands behind your head.\n2. Use your hands to pull your head down very lightly. Hold for 5 seconds.\n3. Draw shoulders back and down using the muscles in your back. This should increase the neck stretch. Hold for 5 seconds.\n4. Now gently push your head back up, while also pulling it down with your hands. Balance both forces so that your head doesn't move. Hold for at least 5 seconds.\n5. Bring your fingers to your forehead and use them to gently move your head back into original position.",
    //     imageSlug: "exercise_neckstretch_back.webp");

    // final lateralNeckStretchDesc =
    //     "Starting position:\nSit or stand with your back straight.\n\nSteps:\n1. Tilt your head to the side and hold for 8 seconds to stretch the side of your neck.\n2. With the closer hand on top of your head, gently pull to stretch further. Hold for 8 seconds.\n3. Turn your chin to your shoulder. Hold for 8 seconds.\n4. Release and return to starting position.";

    // await _createExercise(db,
    //     name: "Left neck stretch",
    //     type: ExerciseType.HEAD,
    //     description: lateralNeckStretchDesc,
    //     flipped: true,
    //     imageSlug: "exercise_neckstretch_lateral.webp");

    // await _createExercise(db,
    //     name: "Right neck stretch",
    //     type: ExerciseType.HEAD,
    //     description: lateralNeckStretchDesc,
    //     imageSlug: "exercise_neckstretch_lateral.webp");

    // await _createExercise(db,
    //     name: "Front neck stretch",
    //     type: ExerciseType.HEAD,
    //     description:
    //         "Starting position:\nSit or stand with your back straight.\n\nSteps:\n1. Open mouth wide.\n2. Slowly tilt head back with mouth opened. If you feel the need for support, clasp your hands behind your head.\n3. Very slowly close and open your mouth.\n4. At the end, slowly return to starting position and close mouth.",
    //     imageSlug: "exercise_neckstretch_front.webp");

    // final backAndLateralNeckStretchDesc =
    //     "Starting position:\nSit upright on a chair or a firm pillow.\n\nSteps:\n1. Breathe out and tilt head forward, chin to chest, with hands behind your head.\n2. Keeping head forward, use waist muscles to turn as far as comfortable to the left.\n3. Use hands to pull head down very slightly, controlling the stretch.\n4. Draw shoulders back and down using the muscles in your back. Hold for 5 seconds.\n5. Turn back into center position.\n6. Bring your hands to your forehead and push head upright again into normal position.";

    // await _createExercise(db,
    //     name: "Back and left neck stretch",
    //     type: ExerciseType.HEAD,
    //     flipped: true,
    //     description: backAndLateralNeckStretchDesc,
    //     imageSlug: "exercise_neckstretch_back,lateral.webp");

    // await _createExercise(db,
    //     name: "Back and right neck stretch",
    //     type: ExerciseType.HEAD,
    //     description: backAndLateralNeckStretchDesc,
    //     imageSlug: "exercise_neckstretch_back,lateral.webp");

    // await _createExercise(db,
    //     name: "Chin tuck with flexion with rotation",
    //     type: ExerciseType.HEAD,
    //     description:
    //         "Starting position:\nSit or stand with your back straight.\n\nSteps:\n1. Tuck your chin in, moving your head back.\n2. Tilt your head forward until you feel a stretch in the back of your neck.\n3. Rotate your head to the side on exhale. Use fingers on your temples to guide your head and apply a little bit of overpressure.\n4. Hold for 5 seconds.\n5. Rotate back, keeping your head down.\n6. Repeat from step 3, switching sides.",
    //     imageSlug: "exercise_chintuck+flextion+rotation.webp");
  }

  Future<void> _createWorkoutFromList(
    Database db,
    String workoutName,
    WorkoutCategory category,
    List<int> _exercises,
  ) async {
    int workoutId = await _createWorkout(
        db,
        workoutName,
        _DEFAULT_COUNTDOWN_DURATION,
        _DEFAULT_EXERCISE_DURATION,
        _DEFAULT_BREAK_DURATION,
        WorkoutType.DEFAULT,
        category);

    for (int i = 0; i < _exercises.length; i++) {
      int workoutOrder = i + 1;
      await _createWorkoutExercise(db,
          workoutId: workoutId,
          workoutType: WorkoutType.DEFAULT,
          order: workoutOrder,
          exerciseId: _exercises[i]);
    }
  }

  Future<void> _createWorkoutFromTupleList(
    Database db,
    String workoutName,
    WorkoutCategory category,
    List<TimingDefinition> _exerciseIDsAndDurations,
  ) async {
    int workoutId = await _createWorkout(
        db,
        workoutName,
        _DEFAULT_COUNTDOWN_DURATION,
        _DEFAULT_EXERCISE_DURATION,
        _DEFAULT_BREAK_DURATION,
        WorkoutType.DEFAULT,
        category);

    for (int i = 0; i < _exerciseIDsAndDurations.length; i++) {
      int workoutOrder = i + 1;
      final durDefinition = _exerciseIDsAndDurations[i];
      await _createWorkoutExercise(db,
          workoutId: workoutId,
          workoutType: WorkoutType.DEFAULT,
          order: workoutOrder,
          duration: durDefinition.exerciseDuration,
          breakBeforeDuration: durDefinition.breakDuration,
          exerciseId: durDefinition.id);
    }
  }

  Future<String> getPath() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    return join(documentsDirectory.path, _DB_FILE);
  }

  Future<void> exportDB(String exportPath) async {
    if (_database != null) {
      await _database!.close();
      _database = await _createDB();

      String dbPath = await getPath();
      File dbFile = File(dbPath);

      dbFile.copy(
          exportPath); //todo think about how to better avoid problems with duplicate filenames
    }
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await _createDB();
    }

    return _database!;
  }

  Future<int> _getNextId(Database db, String tableName, String idColumn) async {
    var table = await db
        .rawQuery("SELECT MAX($idColumn)+1 as $idColumn FROM $tableName");
    return table.first[idColumn] == null ? 1 : table.first[idColumn] as int;
  }

  Future<int> _createExercise(Database db,
      {required String name,
      required String description,
      bool flipped = false,
      required String imageSlug,
      ExerciseType type = ExerciseType.FULL_BODY,
      String? imageAuthor,
      int? imageLicense,
      int? category}) async {
    var table = _EXERCISE_TABLE;
    int id = await _getNextId(db, table, _ID_COL);

    await db.insert(table, <String, dynamic>{
      _ID_COL: id,
      _NAME_COL: name,
      _DESCRIPTION_COL: description,
      _TYPE_COL: type.index,
      _FLIPPED_COL: flipped ? 1 : 0,
      _IMAGE_SLUG_COL: imageSlug,
      _IMAGE_AUTHOR_COL: imageAuthor,
      _IMAGE_LICENSE_COL: imageLicense,
      _CATEGORY_COL: category
    });

    return id;
  }

  Future<int> createOrUpdateCustomWorkout(final Workout workout) async {
    final db = await database;
    int workoutId = workout.dbId == null
        ? await _createWorkout(
            db,
            workout.title,
            workout.countdownDuration,
            workout.exerciseDuration,
            workout.breakDuration,
            WorkoutType.CUSTOM,
            workout.category)
        : workout.dbId!;

    // modify workout meta and delete original exercises if it exists
    if (workout.dbId != null) {
      await _deleteWorkoutExercises(workoutId, WorkoutType.CUSTOM);
      await _modifyWorkout(
          workoutId,
          WorkoutType.CUSTOM,
          workout.title,
          workout.exerciseDuration,
          workout.breakDuration,
          workout.countdownDuration,
          workout.category);
    }

    // create exercises
    for (int i = 0; i < workout.workoutExercises.length; i++) {
      var we = workout.workoutExercises[i];
      await _createWorkoutExercise(db,
          workoutId: workoutId,
          workoutType: WorkoutType.CUSTOM,
          order: i + 1,
          exerciseId: we.exercise.dbId,
          duration: we.duration,
          breakBeforeDuration: we.breakBeforeDuration);
    }

    return workoutId;
  }

  Future<void> deleteCustomWorkout(int workoutId) async {
    await _deleteWorkoutExercises(workoutId, WorkoutType.CUSTOM);

    final db = await database;
    await db.delete(_WORKOUT_TABLE,
        where: "$_ID_COL = ? AND $_TYPE_COL = ?",
        whereArgs: <int>[workoutId, WorkoutType.CUSTOM.index]);
  }

  Future<void> _modifyWorkout(
      int workoutId,
      WorkoutType workoutType,
      String workoutTitle,
      int exerciseDuration,
      int breakDuration,
      int countdownDuration,
      WorkoutCategory category) async {
    final db = await database;
    await db.update(
        _WORKOUT_TABLE,
        <String, String>{
          _TITLE_COL: workoutTitle,
          _EXERCISE_DURATION_COL: exerciseDuration.toString(),
          _BREAK_DURATION_COL: breakDuration.toString(),
          _COUNTDOWN_DURATION_COL: countdownDuration.toString(),
          _CATEGORY_COL: category.index.toString()
        },
        where: "$_ID_COL = ? and $_TYPE_COL = ?",
        whereArgs: <int>[workoutId, workoutType.index]);
  }

  Future<void> _removeLegWorkoutCategory(Database db) async {
    await db.update(_WORKOUT_TABLE,
        <String, int>{_CATEGORY_COL: WorkoutCategory.STRENGTH.index},
        where: "$_CATEGORY_COL = 1");
  }

  Future<void> _deleteWorkoutExercises(int workoutId, WorkoutType type) async {
    //todo would it be more efficient if I passed in the workout, which already has the IDs?
    final db = await database;
    await db.delete(_WORKOUT_EXERCISE_TABLE,
        where: "$_WORKOUT_ID_COL = ? AND $_WORKOUT_TYPE_COL = ?",
        whereArgs: <int>[workoutId, type.index]);
  }

  Future<void> _deleteDefaultWorkouts(Database db) async {
    await db.delete(_WORKOUT_EXERCISE_TABLE,
        where: "$_WORKOUT_TYPE_COL = ${WorkoutType.DEFAULT.index}");
    await db.delete(_WORKOUT_TABLE,
        where: "$_TYPE_COL = ${WorkoutType.DEFAULT.index}");
  }

  Future<int> _createWorkout(
      Database db,
      String title,
      int countdownDuration,
      int exerciseDuration,
      int breakDuration,
      WorkoutType type,
      WorkoutCategory category) async {
    var table = _WORKOUT_TABLE;
    int id = await _getNextId(db, table, _ID_COL);

    await db.insert(table, <String, dynamic>{
      _ID_COL: id,
      _TITLE_COL: title,
      _COUNTDOWN_DURATION_COL: countdownDuration,
      _EXERCISE_DURATION_COL: exerciseDuration,
      _BREAK_DURATION_COL: breakDuration,
      _TYPE_COL: type.index,
      _CATEGORY_COL: category.index
    });

    return id;
  }

  Future<void> _createWorkoutExercise(Database db,
      {required int workoutId,
      WorkoutType workoutType = WorkoutType.DEFAULT,
      required int order,
      required int exerciseId,
      int? duration,
      int? breakBeforeDuration}) async {
    await db.insert(_WORKOUT_EXERCISE_TABLE, <String, dynamic>{
      _WORKOUT_ID_COL: workoutId,
      _WORKOUT_TYPE_COL: workoutType.index,
      _ORDER_COL: order,
      _EXERCISE_COL: exerciseId,
      _EXERCISE_DURATION_COL: duration,
      _BREAK_DURATION_COL: breakBeforeDuration
    });
  }

  Future<List<Exercise>> queryExercisesFromCategory(int category) async {
    final db = await database;
    var res = await db.query(_EXERCISE_TABLE,
        where: "$_CATEGORY_COL = ?", whereArgs: <int>[category]);
    List<Exercise> list = res.isNotEmpty
        ? res
            .map((map) => Exercise(
                dbId: map[_ID_COL] as int,
                name: map[_NAME_COL] as String,
                description: map[_DESCRIPTION_COL] as String,
                twoSided: map[_FLIPPED_COL] == 1,
                type: ExerciseType.values[map[_TYPE_COL] as int? ?? 0],
                imageSlug: map[_IMAGE_SLUG_COL] as String,
                imageAuthor: map[_IMAGE_AUTHOR_COL] as String?,
                imageLicense: map[_IMAGE_LICENSE_COL]
                    as int?)) //todo category should be everywhere
            .toList()
        : [];
    return list;
  }

  Future<List<Exercise>> queryExercises() async {
    final db = await database;
    var res = await db.query(_EXERCISE_TABLE);
    List<Exercise> list = res.isNotEmpty
        ? res
            .map((map) => Exercise(
                dbId: map[_ID_COL] as int,
                name: map[_NAME_COL] as String,
                description: map[_DESCRIPTION_COL] as String,
                twoSided: map[_FLIPPED_COL] == 1,
                type: ExerciseType.values[map[_TYPE_COL] as int? ?? 0],
                imageSlug: map[_IMAGE_SLUG_COL] as String,
                imageAuthor: map[_IMAGE_AUTHOR_COL] as String?,
                imageLicense: map[_IMAGE_LICENSE_COL] as int?))
            .toList()
        : [];
    return list;
  }

  Future<List<WorkoutListed>> queryAllWorkouts() async {
    final db = await database;
    var res = await db.query(_WORKOUT_TABLE, orderBy: _TYPE_COL);
    List<WorkoutListed> list = res.isNotEmpty
        ? res
            .map((map) => WorkoutListed(
                map[_ID_COL] as int,
                WorkoutType.values[map[_TYPE_COL] as int],
                map[_TITLE_COL] as String,
                WorkoutCategory.values[map[_CATEGORY_COL] as int? ?? 0]))
            .toList()
        : [];
    return list;
  }

  Future<Exercise?> queryExercise(int exerciseId) async {
    final db = await database;
    var res = await db.query(_EXERCISE_TABLE,
        where: "$_ID_COL = ?", whereArgs: <int>[exerciseId]);
    return res.isNotEmpty
        ? Exercise(
            dbId: res.first[_ID_COL] as int,
            name: res.first[_NAME_COL] as String,
            description: res.first[_DESCRIPTION_COL] as String,
            twoSided: res.first[_FLIPPED_COL] == 1,
            type: ExerciseType.values[res.first[_TYPE_COL] as int? ?? 0],
            imageSlug: res.first[_IMAGE_SLUG_COL] as String,
            imageAuthor: res.first[_IMAGE_AUTHOR_COL] as String?,
            imageLicense: res.first[_IMAGE_LICENSE_COL] as int?)
        : null;
  }

  Future<Workout?> queryWorkout(int workoutId, WorkoutType type) async {
    final db = await database;
    var weRes = await db.query(_WORKOUT_EXERCISE_TABLE,
        where: "$_WORKOUT_ID_COL = ? AND $_WORKOUT_TYPE_COL = ?",
        whereArgs: <int>[workoutId, type.index],
        orderBy: _ORDER_COL);

    final List<WorkoutExercise> workoutExercises = List.empty(growable: true);
    for (Map<String, dynamic> item in weRes) {
      final exercise = await queryExercise(item[_EXERCISE_COL] as int);

      if (exercise != null) {
        workoutExercises.add(WorkoutExercise(
            exercise: exercise,
            duration: item[_EXERCISE_DURATION_COL] as int?,
            breakBeforeDuration: item[_BREAK_DURATION_COL] as int?));
      }
    }

    var workoutRes = await db.query(_WORKOUT_TABLE,
        where: "$_ID_COL = ? AND $_TYPE_COL = ?",
        whereArgs: <int>[workoutId, type.index]);

    return workoutRes.isNotEmpty
        ? Workout(
            dbId: workoutRes[0][_ID_COL] as int,
            title: workoutRes[0][_TITLE_COL] as String,
            workoutExercises: workoutExercises,
            countdownDuration: workoutRes[0][_COUNTDOWN_DURATION_COL] as int,
            breakDuration: workoutRes[0][_BREAK_DURATION_COL] as int,
            exerciseDuration: workoutRes[0][_EXERCISE_DURATION_COL] as int,
            type: WorkoutType.values[workoutRes[0][_TYPE_COL] as int],
            category:
                WorkoutCategory.values[workoutRes[0][_CATEGORY_COL] as int])
        : null;
  }

  Future<WorkoutListed?> duplicateWorkout(
      int workoutId, WorkoutType type) async {
    // query
    final orig = await queryWorkout(workoutId, type);
    if (orig == null) return null;

    final duplicate = Workout(
        dbId: null,
        type: WorkoutType.CUSTOM,
        title: orig.title,
        workoutExercises: orig.workoutExercises,
        breakDuration: orig.breakDuration,
        category: orig.category,
        countdownDuration: orig.countdownDuration,
        exerciseDuration: orig.exerciseDuration);
    final id = await createOrUpdateCustomWorkout(duplicate);
    return WorkoutListed(
        id, duplicate.type, duplicate.title, duplicate.category);
  }

  Future close() async {
    var db = await database;
    await db.close();
  }
}
