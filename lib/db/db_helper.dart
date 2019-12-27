import 'dart:async';
import 'dart:io';
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/models/exercise.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/models/workout_listed.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  DBHelper._();
  static final DBHelper db = DBHelper._();
  static Database _database;

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
  static const String _IMAGE_COL = 'image';
  static const String _IMAGE_LICENSE_COL = 'imageLicense';
  static const String _IMAGE_AUTHOR_COL = 'imageAuthor';
  static const String _EXERCISE_COL = 'exercise';
  static const String _COUNTDOWN_DURATION_COL = 'countdownDuration';
  static const String _BREAK_DURATION_COL = 'breakDuration';
  static const String _EXERCISE_DURATION_COL = 'exerciseDuration';
  static const String _TWO_SIDED_COL = 'twoSided';

  static const int _DEFAULT_COUNTDOWN_DURATION = 5;
  static const int _DEFAULT_EXERCISE_DURATION = 30;
  static const int _DEFAULT_BREAK_DURATION = 10;

  _createDB() async {
    String path = await getPath();

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
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

      // todo history table with a history of workouts

      await db.execute("CREATE TABLE $_EXERCISE_TABLE ("
          "$_ID_COL INTEGER PRIMARY KEY, "
          "$_NAME_COL TEXT, "
          "$_DESCRIPTION_COL TEXT, "
          "$_TWO_SIDED_COL INTEGER NOT NULL, "
          "$_IMAGE_COL TEXT, " // todo what do I get from the server, really? actually, should split this up!
          "$_IMAGE_AUTHOR_COL TEXT, "
          "$_IMAGE_LICENSE_COL INTEGER, "
          "$_CATEGORY_COL INTEGER" //todo not null?
          ")");

      await db.execute("CREATE TABLE $_WORKOUT_EXERCISE_TABLE ("
          "$_WORKOUT_ID_COL INTEGER NOT NULL, "
          "$_WORKOUT_TYPE_COL INTEGER NOT NULL, "
          "$_ORDER_COL INTEGER NOT NULL, "
          "$_EXERCISE_COL INTEGER NOT NULL, "
          "$_EXERCISE_DURATION_COL INTEGER, "
          "$_BREAK_DURATION_COL INTEGER, "
          "PRIMARY KEY($_WORKOUT_ID_COL,$_ORDER_COL)"
          ")");

      await _addInitialData(db);
    });
  }

  Future<void> _addInitialData(Database db) async {
    await _addScientific7MinuteWorkout(db);
    await _addLegWorkout(db);
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
        name: "Squats",
        description:
            "1. Stand with feet shoulder-width apart\n2. Move the hips back and bend the knees and hips to lower the torso\n3. Repeat",
        image: "assets/exercise_squat.png");
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
        description:
            "1. Sit down on the front edge of a chair, back straight, hands holding the front edge\n2. Still holding the edge of the chair, arms extended, lift your butt and walk forward slightly so that it is a few inches from the chair.\n3. Slowly lower your body, keeping the back straight, until arms are at a right angle\n4. Raise your body again to the previous position, arms extended\n5. Repeat steps 3 and 4",
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
        name: "Plank",
        description:
            "1. Get down on all fours, with arms straight and knees bent\n2. Walk your feet back until they are extended\n3. Hold this position",
        image: "assets/exercise_plank.png");
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
        description:
            "1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace",
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
        name: "Lunges",
        description:
            "1. Stand with back straight\n2. Take a large step forward with your left leg\n3. Bring your pelvis down until you almost touch the floor with your right knee\n4. Bring your pelvis back up\n5. Return to standing position by stepping back\n6. Repeat, switching legs each time",
        image: "assets/exercise_lunge.webp");
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
        description:
            "1. Do a standard push-up:\n1.a Lie down on your stomach\n1.b Place your hands near your ears\n1.c Use your arms to lift your stomach up until the arms are straight, keeping the back straight\n1.d Bend arms until chest almost touches the ground, making sure the back is straight\n1.e Lift your stomach up again, returning to step 3\n2. Rotate your body to the side so that the back is straight, the bottom hand supporting the body is fully extended, and only the bottom hand and foot touch the floor\n3. Repeat, changing sides at step 2 each time",
        image: "assets/exercise_pushuprotation.png");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    final sidePlankDesc =
        "1. Lie down on your side, with your bottom elbow at a right angle, arm sticking out\n2. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line\n3. Hold this position";

    exerciseId = await _createExercise(db,
        name: "Side plank left",
        description: sidePlankDesc,
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
        description: sidePlankDesc,
        twoSided: true,
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
        WorkoutCategory.LEGS);
    int workoutOrder = 1;
    int exerciseId;

    exerciseId = 10; //todo don't hard-code in lunges
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Side lunges",
        description:
            "1. Stand tall and take a wide lateral stride, just greater than the shoulder width.\n2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.\n3. Press up and repeat, switching feet.",
        image: "assets/exercise_sidelunge.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    final bulgarianSquatsDesc =
        "1. Stand tall in front of a chair and take a large step. Put the upper part of your left foot on the chair.\n2. Bend the front knee, balancing with arms until the back knee almost touches the ground\n3. Push back to the starting position and repeat.";

    exerciseId = await _createExercise(db,
        name: "Bulgarian split squats left",
        description: bulgarianSquatsDesc,
        image: "assets/exercise_bulgariansplitsquat.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Bulgarian split squats right",
        description: bulgarianSquatsDesc,
        twoSided: true,
        image: "assets/exercise_bulgariansplitsquat.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    final pistolSquatDesc =
        "1. Stand on one leg, with your other leg straight and slightly forward.\n2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.\n3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.\n4. Repeat";

    exerciseId = await _createExercise(db,
        name: "Pistol squats left",
        description: pistolSquatDesc,
        image: "assets/exercise_pistolsquat.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Pistol squats right",
        description: pistolSquatDesc,
        twoSided: true,
        image: "assets/exercise_pistolsquat.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Kneeling kickbacks",
        description:
            "1. Get down on all fours and place one foot against a resistance like a cable.\n2. Push your foot back until fully extended, concentrating on the gluteus muscles.\n3. Stay for one second, then return to the initial position.",
        image: "assets/exercise_kneelingkickback.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    final singleLegCalfRaiseDesc =
        "1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.\n2. Lift your heels until you're standing on toes.\n3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.";

    exerciseId = await _createExercise(db,
        name: "Left leg calf raises",
        description: singleLegCalfRaiseDesc,
        image: "assets/exercise_singlelegcalfraise.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;

    exerciseId = await _createExercise(db,
        name: "Right leg calf raises",
        twoSided: true,
        description: singleLegCalfRaiseDesc,
        image: "assets/exercise_singlelegcalfraise.webp");
    await _createWorkoutExercise(db,
        workoutId: workoutId,
        workoutType: WorkoutType.DEFAULT,
        order: workoutOrder,
        exerciseId: exerciseId);
    workoutOrder++;
  }

  Future<String> getPath() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    return join(documentsDirectory.path, _DB_FILE);
  }

  Future<void> exportDB(String exportPath) async {
    if (_database != null) {
      await _database.close();
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
      bool twoSided = false,
      String image,
      String imageAuthor,
      int imageLicense,
      int category}) async {
    var table = _EXERCISE_TABLE;
    int id = await _getNextId(db, table, _ID_COL);

    await db.insert(table, {
      _ID_COL: id,
      _NAME_COL: name,
      _DESCRIPTION_COL: description,
      _TWO_SIDED_COL: twoSided ? 1 : 0,
      _IMAGE_COL: image,
      _IMAGE_AUTHOR_COL: imageAuthor,
      _IMAGE_LICENSE_COL: imageLicense,
      _CATEGORY_COL: category
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
    db.delete(_WORKOUT_TABLE,
        where: "$_ID_COL = ? AND $_TYPE_COL = ?",
        whereArgs: [workoutId, WorkoutType.CUSTOM.index]);
  }

  void _renameWorkout(
      int workoutId, WorkoutType workoutType, String workoutTitle) async {
    final db = await database;
    db.update(_WORKOUT_TABLE, {_TITLE_COL: workoutTitle},
        where: "$_ID_COL = ? and $_TYPE_COL = ?",
        whereArgs: [workoutId, workoutType.index]);
  }

  void _deleteWorkoutExercises(int workoutId, WorkoutType type) async {
    //todo would it be more efficient if I passed in the workout, which already has the IDs?
    final db = await database;
    db.delete(_WORKOUT_EXERCISE_TABLE,
        where: "$_WORKOUT_ID_COL = ? AND $_WORKOUT_TYPE_COL = ?",
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
    var table = _WORKOUT_TABLE;
    int id = await _getNextId(db, table, _ID_COL);

    await db.insert(table, {
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
      {int workoutId,
      WorkoutType workoutType = WorkoutType.DEFAULT,
      int order,
      int exerciseId,
      int duration,
      int breakBeforeDuration}) async {
    await db.insert(_WORKOUT_EXERCISE_TABLE, {
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
        where: "$_CATEGORY_COL = ?", whereArgs: [category]);
    List<Exercise> list = res.isNotEmpty
        ? res
            .map((map) => Exercise(
                dbId: map[_ID_COL],
                name: map[_NAME_COL],
                description: map[_DESCRIPTION_COL],
                twoSided: map[_TWO_SIDED_COL] == 1,
                image: map[_IMAGE_COL],
                imageAuthor: map[_IMAGE_AUTHOR_COL],
                imageLicense: map[_IMAGE_LICENSE_COL],
                category: map[_CATEGORY_COL]))
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
                dbId: map[_ID_COL],
                name: map[_NAME_COL],
                description: map[_DESCRIPTION_COL],
                twoSided: map[_TWO_SIDED_COL] == 1,
                image: map[_IMAGE_COL],
                imageAuthor: map[_IMAGE_AUTHOR_COL],
                imageLicense: map[_IMAGE_LICENSE_COL],
                category: map[_CATEGORY_COL]))
            .toList()
        : [];
    return list;
  }

  Future<List<WorkoutListed>> listWorkouts() async {
    final db = await database;
    var res = await db.query(_WORKOUT_TABLE);
    List<WorkoutListed> list = res.isNotEmpty
        ? res
            .map((map) => WorkoutListed(
                map[_ID_COL],
                WorkoutType.values[map[_TYPE_COL]],
                map[_TITLE_COL],
                WorkoutCategory.values[map[_CATEGORY_COL]]))
            .toList()
        : [];
    return list;
  }

  Future<Exercise> queryExercise(int exerciseId) async {
    final db = await database;
    var res = await db
        .query(_EXERCISE_TABLE, where: "$_ID_COL = ?", whereArgs: [exerciseId]);
    return res.isNotEmpty
        ? Exercise(
            dbId: res.first[_ID_COL],
            name: res.first[_NAME_COL],
            description: res.first[_DESCRIPTION_COL],
            twoSided: res.first[_TWO_SIDED_COL] == 1,
            image: res.first[_IMAGE_COL],
            imageAuthor: res.first[_IMAGE_AUTHOR_COL],
            imageLicense: res.first[_IMAGE_LICENSE_COL],
            category: res.first[_CATEGORY_COL])
        : Null;
  }

  Future<Workout> queryWorkout(int workoutId, WorkoutType type) async {
    final db = await database;
    var weRes = await db.query(_WORKOUT_EXERCISE_TABLE,
        where: "$_WORKOUT_ID_COL = ? AND $_WORKOUT_TYPE_COL = ?",
        whereArgs: [workoutId, type.index],
        orderBy: _ORDER_COL);
    List<WorkoutExercise> workoutExercises = List()..length = weRes.length;
    for (int i = 0; i < weRes.length; i++) {
      var item = weRes[i];
      var exercise = await queryExercise(item[_EXERCISE_COL]);
      workoutExercises[i] = WorkoutExercise(
          dbId: item[_ID_COL],
          exercise: exercise,
          duration: item[_EXERCISE_DURATION_COL],
          breakBeforeDuration: item[_BREAK_DURATION_COL]);
    }

    var workoutRes = await db.query(_WORKOUT_TABLE,
        where: "$_ID_COL = ? AND $_TYPE_COL = ?",
        whereArgs: [workoutId, type.index]);

    return Workout(
        dbId: workoutRes[0][_ID_COL],
        title: workoutRes[0][_TITLE_COL],
        workoutExercises: workoutExercises,
        countdownDuration: workoutRes[0][_COUNTDOWN_DURATION_COL],
        breakDuration: workoutRes[0][_BREAK_DURATION_COL],
        exerciseDuration: workoutRes[0][_EXERCISE_DURATION_COL],
        type: WorkoutType.values[workoutRes[0][_TYPE_COL]],
        category: WorkoutCategory.values[workoutRes[0][_CATEGORY_COL]]);
  }

  Future close() async {
    var db = await database;
    db.close();
  }
}
