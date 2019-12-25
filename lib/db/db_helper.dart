import 'dart:async';
import 'dart:io';
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/models/exercise.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/models/workout_listed.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/screens/workout_list.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  DBHelper._();
  static final DBHelper db = DBHelper._();
  static Database _database;

  static final String _dbFile = "feeel.db";
  static final String _workoutTable = 'workouts';
  static final String _exerciseTable = 'exercises';
  static final String _workoutExerciseTable = 'workoutExercises';

  static const String idCol = 'id';
  static const String typeCol = 'type';
  static const String titleCol = 'title';
  static const String workoutIdCol = 'workoutId';
  static const String workoutTypeCol = 'workoutType';
  static const String categoryCol = 'category';
  static const String orderCol = 'orderCol';
  static const String nameCol = 'name';
  static const String descriptionCol = 'description';
  static const String imageCol = 'image';
  static const String imageLicenseCol = 'imageLicense';
  static const String imageAuthorCol = 'imageAuthor';
  static const String exerciseCol = 'exercise';
  static const String countdownDurationCol = 'countdownDuration';
  static const String breakDurationCol = 'breakDuration';
  static const String exerciseDurationCol = 'exerciseDuration';

  _createDB() async {
    String path = await getPath();

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE $_workoutTable ( "
          "$idCol INTEGER NOT NULL, "
          "$typeCol INTEGER NOT NULL, "
          "$titleCol TEXT NOT NULL, "
          "$categoryCol INTEGER NOT NULL, "
          "$countdownDurationCol INTEGER NOT NULL, "
          "$exerciseDurationCol INTEGER NOT NULL, "
          "$breakDurationCol INTEGER NOT NULL, " // todo lastUsed as date
          "PRIMARY KEY($idCol,$typeCol)"
          ")");

      // todo history table with a history of workouts

      await db.execute("CREATE TABLE $_exerciseTable ("
          "$idCol INTEGER PRIMARY KEY, "
          "$nameCol TEXT, "
          "$descriptionCol TEXT, "
          "$imageCol TEXT, " // todo what do I get from the server, really? actually, should split this up!
          "$imageAuthorCol TEXT, "
          "$imageLicenseCol INTEGER, "
          "$categoryCol INTEGER" //todo not null?
          ")");

      await db.execute("CREATE TABLE $_workoutExerciseTable ("
          "$workoutIdCol INTEGER NOT NULL, "
          "$workoutTypeCol INTEGER NOT NULL, "
          "$orderCol INTEGER NOT NULL, "
          "$exerciseCol INTEGER NOT NULL, "
          "$exerciseDurationCol INTEGER, "
          "$breakDurationCol INTEGER, "
          "PRIMARY KEY($workoutIdCol,$orderCol)"
          ")");

      _addInitialData();
    });
  }

  void _addInitialData() async {
    await _addScientific7MinuteWorkout();
    await _addLegWorkout();
  }

  final int _DEFAULT_COUNTDOWN_DURATION = 5;
  final int _DEFAULT_EXERCISE_DURATION = 30;
  final int _DEFAULT_BREAK_DURATION = 10;

  Future<void> _addScientific7MinuteWorkout() async {
    int workoutId = await _createWorkout(
        "Scientific 7 minute workout",
        _DEFAULT_COUNTDOWN_DURATION,
        _DEFAULT_EXERCISE_DURATION,
        _DEFAULT_BREAK_DURATION,
        WorkoutType.DEFAULT,
        WorkoutCategory.FULL_BODY);
    int workoutOrder = 1;
    int exerciseId;

    exerciseId = await createExercise(
        name: "Jumping jacks",
        description:
            "1. Stand with feet together and arms at the sides\n2. Jump to a position with the legs spread wide and the hands touching overhead\n3. Repeat",
        image: "assets/exercise_jumpingjacks.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 5);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Wall sit",
        description:
            "1. Lean against the wall with feet planted firmly on the ground, shoulders width apart and about 2 feet away from the wall\n        2. Slide down the wall, keeping the back pressed to it, until \n. The knees should be directly above the ankles\n\nQuadricep pain is normal, stop if feeling pain in the knee or kneecap",
        image: "assets/exercise_wallsit.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Push-ups",
        description:
            "1. Lie down on your stomach\n        2. Place your hands near your ears\n        3. Use your arms to lift your stomach up until the arms are straight, keeping the back straight\n        4. Bend arms until chest almost touches the ground, making sure the back is straight\n        5. Repeat from step 3",
        image: "assets/exercise_pushup.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Ab crunches",
        description:
            "1. Lie down face up on the floor with knees bent.\n        2. Curl the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.\n        3. Repeat",
        image: "assets/exercise_abcrunch.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Step-ups",
        description:
            "1. Stand facing a chair\n        2. Step up onto the chair\n        3. Step off the chair\n        4. Repeat",
        image: "assets/exercise_stepup.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Squats", description: "", image: "assets/exercise_squat.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Chair dips",
        description: "",
        image: "assets/exercise_tricepsdip.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Plank", description: "", image: "assets/exercise_plank.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "High knees",
        description: "",
        image: "assets/exercise_highknees.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Lunges", description: "", image: "assets/exercise_lunge.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Push-up rotations",
        description: "",
        image: "assets/exercise_pushuprotation.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Side plank left",
        description: "",
        image: "assets/exercise_sideplank.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Side plank right",
        description: "",
        image: "assets/exercise_sideplank.png");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;
  }

  Future<void> _addLegWorkout() async {
    int workoutId = await _createWorkout(
        "Leg workout",
        _DEFAULT_COUNTDOWN_DURATION,
        _DEFAULT_EXERCISE_DURATION,
        _DEFAULT_BREAK_DURATION,
        WorkoutType.DEFAULT,
        WorkoutCategory.LEGS);
    int workoutOrder = 1;
    int exerciseId;

    exerciseId = await createExercise(
        name: "Stationary lunges",
        description:
            "1. Stand tall with your feet hip distance apart, take a step forward and keep this position, using arms for balance if needed.<br/>\n        2. Lower the front knee to a 90 degree angle so that both knees are bent. The back knee should not touch the floor and avoid rocking forward. The front knee must remain perpendicular to the floor and in line with the foot.<br/>\n        3. Press up with front knee to the starting postion and repeat, switching feet.",
        image: "assets/exercise_stationarylunge.webp");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Stationary lateral lunges",
        description:
            "1. Stand tall and take a wide lateral stride, just greater than shoulder width. \n\n        2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.\n\n        3. Press up and repeat, switching feet.",
        image: "assets/exercise_stationarylaterallunge.webp");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Bulgarian split squats",
        description:
            "1. Stand tall in front of a chair and take a large step. Put the upper part of your foot on the chair.\n\n        2. Bend the front knee, balancing with arms until the back knee almost touches the ground\n\n        3. Push back to the starting position and repeat, switching feet.",
        image: "assets/exercise_bulgariansplitsquat.webp");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Pistol squats",
        description:
            "1. Sit on a bench or a chair with one leg straight in front of you. Stand up using only your other leg.\n\n        2. Bend the knee slowly to return to the starting position. Try to not rest on the chair or bench.",
        image: "assets/exercise_pistolsquat.webp");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Cable kickbacks",
        description:
            "1. Get down on all fours and place one foot against a resistance like a cable.\n\n        2. Push your foot back until fully extended, concentrating on the gluteus muscles.\n\n        3. Stay for one second, then return to the initial position.",
        image: "assets/exercise_cablekickback.webp");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Calf raises",
        description:
            "1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.\n\n        3. Lift your heels until you\\'re standing on toes.\n\n        4. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.",
        image: "assets/exercise_calfraise.webp");
    _createWorkoutExercise(
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;
  }

  // void _addAdvanced7MinuteWorkout { TODO
  //   int workoutId = await createWorkout();
  //   int workoutOrder = 1;
  //   int exerciseId;

  //   exerciseId = await createExercise(
  //       name: "",
  //       description: "",
  //       image: "assets/.png");
  //   _createWorkoutExercise(
  //       workoutId: workoutId,
  //       workoutType: WorkoutType.DEFAULT,
  //       order: workoutOrder,
  //       exerciseId: exerciseId,
  //       duration: 30,
  //       breakBeforeDuration: 10);
  //   workoutOrder++;
  // }

  Future<String> getPath() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    return join(documentsDirectory.path, _dbFile);
  }

  Future<void> exportDB(String exportPath) async {
    if (_database != null) {
      await _database.close();
      _database = await _createDB();

      String dbPath = await getPath();
      File dbFile = File(dbPath);

      dbFile.copy(
          exportPath); //todo think about how to better avoid problems with duplicate filenames
      print(exportPath);
    }
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await _createDB();
    }

    return _database;
  }

  Future<int> _getNextId(db, tableName, idColumn) async {
    var table = await db
        .rawQuery("SELECT MAX($idColumn)+1 as $idColumn FROM $tableName");
    return table.first[idColumn] == null ? 1 : table.first[idColumn];
  }

  Future<int> createExercise(
      {String name,
      String description,
      String image,
      String imageAuthor,
      int imageLicense,
      int category}) async {
    final db = await database;
    var table = _exerciseTable;
    int id = await _getNextId(db, table, idCol);

    await db.insert(table, {
      idCol: id,
      nameCol: name,
      descriptionCol: description,
      imageCol: image,
      imageAuthorCol: imageAuthor,
      imageLicenseCol: imageLicense,
      categoryCol: category
    });

    return id;
  }

  Future<int> createOrModifyCustomWorkout(Workout workout) async {
    int workoutId = workout.dbId == null
        ? await _createWorkout(
            workout.title,
            workout.countdownDuration,
            workout.exerciseDuration,
            workout.breakDuration,
            WorkoutType.CUSTOM,
            workout.category)
        : workout.dbId;

    if (workout.dbId != null) {
      _deleteWorkoutExercises(workoutId, WorkoutType.CUSTOM);
      _renameWorkout(workoutId, WorkoutType.CUSTOM, workout.title);
    }

    for (int i = 0; i < workout.workoutExercises.length; i++) {
      var we = workout.workoutExercises[i];
      _createWorkoutExercise(
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
    _deleteWorkoutExercises(workoutId, WorkoutType.CUSTOM);

    final db = await database;
    db.delete(_workoutTable,
        where: "$idCol = ? AND $typeCol = ?",
        whereArgs: [workoutId, WorkoutType.CUSTOM.index]);
  }

  void _renameWorkout(
      int workoutId, WorkoutType workoutType, String workoutTitle) async {
    final db = await database;
    db.update(_workoutTable, {titleCol: workoutTitle},
        where: "$idCol = ? and $typeCol = ?",
        whereArgs: [workoutId, workoutType.index]);
  }

  void _deleteWorkoutExercises(int workoutId, WorkoutType type) async {
    //todo would it be more efficient if I passed in the workout, which already has the IDs?
    final db = await database;
    db.delete(_workoutExerciseTable,
        where: "$workoutIdCol = ? AND $workoutTypeCol = ?",
        whereArgs: [workoutId, type.index]);
  }

  Future<int> _createWorkout(
      String title,
      int countdownDuration,
      int exerciseDuration,
      int breakDuration,
      WorkoutType type,
      WorkoutCategory category) async {
    final db = await database;
    var table = _workoutTable;
    int id = await _getNextId(db, table, idCol);

    await db.insert(table, {
      idCol: id,
      titleCol: title,
      countdownDurationCol: countdownDuration,
      exerciseDurationCol: exerciseDuration,
      breakDurationCol: breakDuration,
      typeCol: type.index,
      categoryCol: category.index
    });

    return id;
  }

  Future<void> _createWorkoutExercise(
      {int workoutId,
      WorkoutType workoutType = WorkoutType.DEFAULT,
      int order,
      int exerciseId,
      int duration,
      int breakBeforeDuration}) async {
    final db = await database;

    await db.insert(_workoutExerciseTable, {
      workoutIdCol: workoutId,
      workoutTypeCol: workoutType.index,
      orderCol: order,
      exerciseCol: exerciseId,
      exerciseDurationCol: duration,
      breakDurationCol: breakBeforeDuration
    });
  }

  Future<List<Exercise>> queryExercisesFromCategory(int category) async {
    final db = await database;
    var res = await db.query(_exerciseTable,
        where: "$categoryCol = ?", whereArgs: [category]);
    List<Exercise> list = res.isNotEmpty
        ? res
            .map((map) => Exercise(
                dbId: map[idCol],
                name: map[nameCol],
                description: map[descriptionCol],
                image: map[imageCol],
                imageAuthor: map[imageAuthorCol],
                imageLicense: map[imageLicenseCol],
                category: map[categoryCol]))
            .toList()
        : [];
    return list;
  }

  Future<List<Exercise>> queryExercises() async {
    final db = await database;
    var res = await db.query(_exerciseTable);
    List<Exercise> list = res.isNotEmpty
        ? res
            .map((map) => Exercise(
                dbId: map[idCol],
                name: map[nameCol],
                description: map[descriptionCol],
                image: map[imageCol],
                imageAuthor: map[imageAuthorCol],
                imageLicense: map[imageLicenseCol],
                category: map[categoryCol]))
            .toList()
        : [];
    return list;
  }

  Future<List<WorkoutListed>> listWorkouts() async {
    final db = await database;
    var res = await db.query(_workoutTable);
    List<WorkoutListed> list = res.isNotEmpty
        ? res
            .map((map) => WorkoutListed(
                map[idCol],
                WorkoutType.values[map[typeCol]],
                map[titleCol],
                WorkoutCategory.values[map[categoryCol]]))
            .toList()
        : [];
    return list;
  }

  Future<Exercise> queryExercise(int exerciseId) async {
    final db = await database;
    var res = await db
        .query(_exerciseTable, where: "$idCol = ?", whereArgs: [exerciseId]);
    return res.isNotEmpty
        ? Exercise(
            dbId: res.first[idCol],
            name: res.first[nameCol],
            description: res.first[descriptionCol],
            image: res.first[imageCol],
            imageAuthor: res.first[imageAuthorCol],
            imageLicense: res.first[imageLicenseCol],
            category: res.first[categoryCol])
        : Null;
  }

  Future<Workout> queryWorkout(int workoutId, WorkoutType type) async {
    final db = await database;
    var weRes = await db.query(_workoutExerciseTable,
        where: "$workoutIdCol = ? AND $workoutTypeCol = ?",
        whereArgs: [workoutId, type.index],
        orderBy: orderCol); //todo orderby correct?
    List<WorkoutExercise> workoutExercises = List()..length = weRes.length;
    for (int i = 0; i < weRes.length; i++) {
      var item = weRes[i];
      var exercise = await queryExercise(item[exerciseCol]);
      workoutExercises[i] = WorkoutExercise(
          dbId: item[idCol],
          exercise: exercise,
          duration: item[exerciseDurationCol],
          breakBeforeDuration: item[breakDurationCol]);
    }

    var workoutRes = await db.query(_workoutTable,
        where: "$idCol = ? AND $typeCol = ?",
        whereArgs: [workoutId, type.index]);

    return Workout(
        dbId: workoutRes[0][idCol],
        title: workoutRes[0][titleCol],
        workoutExercises: workoutExercises,
        countdownDuration: workoutRes[0][countdownDurationCol],
        breakDuration: workoutRes[0][breakDurationCol],
        exerciseDuration: workoutRes[0][exerciseDurationCol],
        type: WorkoutType.values[workoutRes[0][typeCol]],
        category: WorkoutCategory.values[workoutRes[0][categoryCol]]);
  }

  Future close() async {
    var db = await database;
    db.close();
  }
}
