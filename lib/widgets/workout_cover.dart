import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/i18n/translations.dart';

class WorkoutCover extends StatelessWidget {
  final Color color;
  final Workout workout;
  final Function onPressed;

  WorkoutCover(
      {Key key, @required this.workout, @required this.color, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          BackButton(
            color: color,
          ),
          Expanded(
// todo child: CustomScrollView(slivers: <Widget>[
//   SliverList(
//                     delegate: SliverChildBuilderDelegate(
//                       (context, index) {
//                         return WorkoutListItem(workoutsListed[index],
//                             onDelete: () {
//                           setState(() {
//                             DBHelper.db.deleteCustomWorkout(
//                                 workoutsListed[index].dbId);
//                           });
//                         }, onEdit: () {
//                           setState(() {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => WorkoutEditorScreen(
//                                           workoutListed: workoutsListed[index],
//                                         )));
//                           });
//                         });
//                       },
//                       childCount: workoutsListed.length,
//                     ),
//                   )
// ],)

              child: Center(
                  child: Text(
            workout.title.i18n,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.w900, color: color),
          ))),
          Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: FloatingActionButton.extended(
                    icon: Icon(Icons.play_arrow),
                    label: Text("Start workout".i18n),
                    onPressed: onPressed,
                    backgroundColor: color,
                  )))
        ]));
  }
}
