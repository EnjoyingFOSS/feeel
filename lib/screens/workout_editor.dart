import 'package:feeel/db/db_helper.dart';

import '../models/workout.dart';

import '../models/workout_listed.dart';
import 'package:flutter/material.dart';

class WorkoutEditorScreen extends StatefulWidget {
  final WorkoutListed workoutListed;

  const WorkoutEditorScreen({Key key, this.workoutListed}) : super(key: key);

  @override
  WorkoutEditorScreenState createState() {
    return WorkoutEditorScreenState();
  }
}

class WorkoutEditorScreenState extends State<WorkoutEditorScreen> {
  Workout _editableWorkout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: DBHelper.db.queryWorkout(widget.workoutListed.dbId),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                _editableWorkout = snapshot.data;
                // todo return Form(
                //   //todo child:
                // );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
