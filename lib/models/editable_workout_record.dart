import 'package:feeel/db/database.dart';

class EditableWorkoutRecord {
  final int? dbId;
  final Workout workout;
  final List<WorkoutExercise> workoutExercises;
  final List<int> completedDurations;
  final DateTime workoutStart;

  EditableWorkoutRecord(
      {required this.workout,
      required this.workoutExercises,
      required this.workoutStart,
      this.dbId})
      : completedDurations =
            List.filled(workoutExercises.length, 0, growable: false);
}
