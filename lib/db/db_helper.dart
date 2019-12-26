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

  static const String _dbFile = "feeel.db";
  static const String _workoutTable = 'workouts';
  static const String _exerciseTable = 'exercises';
  static const String _workoutExerciseTable = 'workoutExercises';

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

  static const int _DEFAULT_COUNTDOWN_DURATION = 5;
  static const int _DEFAULT_EXERCISE_DURATION = 30;
  static const int _DEFAULT_BREAK_DURATION = 10;

  _createDB() async {
    String path = await getPath();

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      print("tables started");
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

      print("tables done");

      await _addInitialData(db);
    });
  }

  Future<void> _addInitialData(Database db) async {
    print("Adding intitial data");

    await _addScientific7MinuteWorkout(db);
    await _addLegWorkout(db);
    print("Data added");
  }

  Future<void> _addScientific7MinuteWorkout(Database db) async {
    int workoutId = await _createWorkout(
        db,
        "Scientific 7 minute workout",
        _DEFAULT_COUNTDOWN_DURATION,
        _DEFAULT_EXERCISE_DURATION,
        _DEFAULT_BREAK_DURATION,
        WorkoutType.DEFAULT,
        WorkoutCategory.FULL_BODY);
    int workoutOrder = 1;
    int exerciseId;

    exerciseId = await _createExercise(db,
        name: "Jumping jacks",
        description:
            "1. Stand with feet together and arms at the sides\n2. Jump to a position with the legs spread wide and the hands touching overhead\n3. Repeat",
        image: "assets/exercise_jumpingjacks.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 5);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Wall sit",
        description:
            "1. Lean against the wall with feet planted firmly on the ground, shoulders width apart and about 2 feet away from the wall\n2. Slide down the wall, keeping the back pressed to it, until \n. The knees should be directly above the ankles\nQuadricep pain is normal, stop if feeling pain in the knee or kneecap",
        image: "assets/exercise_wallsit.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Push-ups",
        description:
            "1. Lie down on your stomach\n2. Place your hands near your ears\n3. Use your arms to lift your stomach up until the arms are straight, keeping the back straight\n4. Bend arms until chest almost touches the ground, making sure the back is straight\n5. Repeat from step 3",
        image: "assets/exercise_pushup.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Ab crunches",
        description:
            "1. Lie down face up on the floor with knees bent.\n2. Curl the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.\n3. Repeat",
        image: "assets/exercise_abcrunch.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Step-ups",
        description:
            "1. Stand facing a chair\n2. Step up onto the chair\n3. Step off the chair\n4. Repeat",
        image: "assets/exercise_stepup.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Squats", description: "", image: "assets/exercise_squat.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Chair dips",
        description: "",
        image: "assets/exercise_tricepsdip.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Plank", description: "", image: "assets/exercise_plank.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "High knees",
        description: "",
        image: "assets/exercise_highknees.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Lunges", description: "", image: "assets/exercise_lunge.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Push-up rotations",
        description: "",
        image: "assets/exercise_pushuprotation.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Side plank left",
        description: "",
        image: "assets/exercise_sideplank.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Side plank right",
        description: "",
        image: "assets/exercise_sideplank.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;
  }

  Future<void> _addLegWorkout(Database db) async {
    int workoutId = await _createWorkout(
        db,
        "Leg workout",
        _DEFAULT_COUNTDOWN_DURATION,
        _DEFAULT_EXERCISE_DURATION,
        _DEFAULT_BREAK_DURATION,
        WorkoutType.DEFAULT,
        WorkoutCategory.LEGS); //TODO should I catch, then throw, or do as here?
    int workoutOrder = 1;
    int exerciseId;

    exerciseId = await _createExercise(db,
        name: "Stationary lunges",
        description:
            "1. Stand tall with your feet hip distance apart, take a step forward and keep this position, using arms for balance if needed.\n2. Lower the front knee to a 90 degree angle so that both knees are bent. The back knee should not touch the floor and avoid rocking forward. The front knee must remain perpendicular to the floor and in line with the foot.\n3. Press up with front knee to the starting postion and repeat, switching feet.",
        image: "assets/exercise_stationarylunge.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Stationary lateral lunges",
        description:
            "1. Stand tall and take a wide lateral stride, just greater than shoulder width.\n2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.\n3. Press up and repeat, switching feet.",
        image: "assets/exercise_stationarylaterallunge.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Bulgarian split squats",
        description:
            "1. Stand tall in front of a chair and take a large step. Put the upper part of your foot on the chair.\n2. Bend the front knee, balancing with arms until the back knee almost touches the ground\n3. Push back to the starting position and repeat, switching feet.",
        image: "assets/exercise_bulgariansplitsquat.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Pistol squats",
        description:
            "1. Sit on a bench or a chair with one leg straight in front of you. Stand up using only your other leg.\n2. Bend the knee slowly to return to the starting position. Try to not rest on the chair or bench.",
        image: "assets/exercise_pistolsquat.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Cable kickbacks",
        description:
            "1. Get down on all fours and place one foot against a resistance like a cable.\n2. Push your foot back until fully extended, concentrating on the gluteus muscles.\n3. Stay for one second, then return to the initial position.",
        image: "assets/exercise_cablekickback.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Calf raises",
        description:
            "1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.\n3. Lift your heels until you\\'re standing on toes.\n4. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.",
        image: "assets/exercise_calfraise.webp");
    await _createWorkoutExercise(db,
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
  //   await _createWorkoutExercise(db,
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

  Future<int> _createExercise(Database db,
      {String name,
      String description,
      String image,
      String imageAuthor,
      int imageLicense,
      int category}) async {
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
        : workout.dbId;

    if (workout.dbId != null) {
      _deleteWorkoutExercises(workoutId, WorkoutType.CUSTOM);
      _renameWorkout(workoutId, WorkoutType.CUSTOM, workout.title);
    }

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
      Database db,
      String title,
      int countdownDuration,
      int exerciseDuration,
      int breakDuration,
      WorkoutType type,
      WorkoutCategory category) async {
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

  Future<void> _createWorkoutExercise(Database db,
      {int workoutId,
      WorkoutType workoutType = WorkoutType.DEFAULT,
      int order,
      int exerciseId,
      int duration,
      int breakBeforeDuration}) async {
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
