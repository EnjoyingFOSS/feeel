import 'database.dart';

class EditableWorkoutRecord {
  final Workout workout;
  final List<WorkoutExercise> workoutExercises;
  final List<int> completedDurations;
  final DateTime workoutStart;

  EditableWorkoutRecord(
      {required this.workout,
      required this.workoutExercises,
      required this.workoutStart})
      : completedDurations =
            List.filled(workoutExercises.length, 0, growable: false);
}
