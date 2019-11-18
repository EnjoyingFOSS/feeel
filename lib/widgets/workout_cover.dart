import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:feeel/models/workout.dart';

class WorkoutCover extends StatelessWidget {
  final Color color;
  final Workout workout;
  final Function onPressed;

  WorkoutCover({Key key, @required this.workout, @required this.color, this.onPressed})
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
              child: Center(
                  child: Text(
            workout.title,
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.w900, color: color),
          ))),
          Center(child: FloatingActionButton.extended(
            icon: Icon(Icons.play_arrow),
            label: Text("Start exercise"),
            onPressed: onPressed,
            backgroundColor: color,
          ))
        ]));
  }
}
