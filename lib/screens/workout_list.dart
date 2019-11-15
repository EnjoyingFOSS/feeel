import 'package:feeel/helpers/db_helper.dart';
import 'package:feeel/models/exercise.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/models/workout_listed.dart';
import 'package:feeel/screens/workout_screen.dart';
import 'package:flutter/material.dart';

class WorkoutList extends StatefulWidget {
  @override
  WorkoutListView createState() {
    return WorkoutListView();
  }
}

class WorkoutListView extends State<WorkoutList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<WorkoutListed>>(
        future: DBHelper.db.listWorkouts(),
        builder: (BuildContext context,
            AsyncSnapshot<List<WorkoutListed>> snapshot) {
          if (snapshot.hasData) {
            var workoutsListed = snapshot.data;
            List<Widget> grid = List.generate(workoutsListed.length, (int index) {
              return Card(
                  child: InkWell(
                      child: ListTile(
                title: Text(workoutsListed[index].title),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return WorkoutScreen(workoutListed: workoutsListed[index]);
                  }));
                },
              )));
            });

            return Scaffold(
              appBar: AppBar(title: Text("Feeel")),
              body: GridView.count(
                crossAxisCount: 2,
                children: grid,
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
