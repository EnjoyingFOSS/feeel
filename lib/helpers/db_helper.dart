import 'dart:async';
import 'dart:io';
import 'package:feeel/models/exercise.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/models/workout_listed.dart';
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
  static final String _workoutExerciseTable = 'workout_exercises';

  static const String idCol = 'id';
  static const String titleCol = 'title';
  static const String workoutCol = 'workout';
  static const String orderCol = 'orderCol';
  static const String nameCol = 'name';
  static const String descriptionCol = 'description';
  static const String imageCol = 'image';
  static const String imageLicenseCol = 'image_license';
  static const String imageAuthorCol = 'image_author';
  static const String categoryCol = 'category';
  static const String exerciseCol = 'exercise';
  static const String breakCol = 'break';
  static const String durationCol = 'duration';

  _createDB() async {
    String path = await getPath();

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE $_workoutTable ( "
          "${idCol} INTEGER PRIMARY KEY, "
          "${titleCol} TEXT NOT NULL"
          ")");

      await db.execute("CREATE TABLE $_exerciseTable ("
          "${idCol} INTEGER PRIMARY KEY, "
          "${nameCol} TEXT, "
          "${descriptionCol} TEXT, "
          "${imageCol} TEXT, " // todo what do I get from the server, really? actually, should split this up!
          "${imageAuthorCol} TEXT, "
          "${imageLicenseCol} INTEGER, "
          "${categoryCol} INTEGER" //todo not null?
          ")");

      await db.execute("CREATE TABLE $_workoutExerciseTable ("
          "${workoutCol} INTEGER NOT NULL, "
          "${orderCol} INTEGER NOT NULL, "
          "${exerciseCol} INTEGER NOT NULL, "
          "${durationCol} INTEGER NOT NULL, "
          "${breakCol} INTEGER NOT NULL, "
          "PRIMARY KEY(${workoutCol},${orderCol})"
          ")");

      _addInitialData();
    });
  }

  void _addInitialData() async {
    int exerciseId;

    // 7 minute workout
    int workoutId = await createWorkout("7 minute workout");
    int workoutOrder = 1;

    exerciseId = await createExercise(
        name: "Jumping jacks",
        description: "Description",
        image: "assets/exercise_jumpingjacks.png");
    createWorkoutExercise(
        workoutId: workoutId,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;

    exerciseId = await createExercise(
        name: "Push-ups",
        description: "Description",
        image: "assets/exercise_pushup.png");
    createWorkoutExercise(
        workoutId: workoutId,
        order: workoutOrder,
        exerciseId: exerciseId,
        duration: 30,
        breakBeforeDuration: 10);
    workoutOrder++;
  }

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

  Future<int> createWorkout(String title) async {
    final db = await database;
    var table = _workoutTable;
    int id = await _getNextId(db, table, idCol);

    await db.insert(table, {idCol: id, titleCol: title});

    return id;
  }

  Future<void> createWorkoutExercise(
      {int workoutId,
      int order,
      int exerciseId,
      int duration,
      int breakBeforeDuration}) async {
    final db = await database;

    await db.insert(_workoutExerciseTable, {
      workoutCol: workoutId,
      orderCol: order,
      exerciseCol: exerciseId,
      durationCol: duration,
      breakCol: breakBeforeDuration
    });
  }

  Future<List<Exercise>> queryExercisesFromCategory(int category) async {
    final db = await database;
    var res = await db.query(_exerciseTable,
        where: "${categoryCol} = ?", whereArgs: [category]);
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
        ? res.map((map) => WorkoutListed(map[idCol], map[titleCol])).toList()
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

  Future<Workout> queryWorkout(int workoutId) async {
    final db = await database;
    var weRes = await db.query(_workoutExerciseTable,
        where: "$workoutCol = ?",
        whereArgs: [workoutId],
        orderBy: orderCol); //todo orderby correct?
    List<WorkoutExercise> workoutExercises = List(weRes.length);
    for (int i = 0; i < weRes.length; i++) {
      var item = weRes[i];
      var exercise = await queryExercise(item[exerciseCol]);
      workoutExercises[i] = WorkoutExercise(
          dbId: item[idCol],
          exercise: exercise,
          duration: item[durationCol],
          breakBeforeDuration: item[breakCol]);
    }

    var workoutRes = await db
        .query(_workoutTable, where: "$idCol = ?", whereArgs: [workoutId]);

    return Workout(
        dbId: workoutRes[0][idCol],
        title: workoutRes[0][titleCol],
        workoutExercises: workoutExercises);
  }

  Future close() async {
    var db = await database;
    db.close();
  }
}
