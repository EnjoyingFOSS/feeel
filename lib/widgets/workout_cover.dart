import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:feeel/models/workout.dart';

class WorkoutCover extends StatelessWidget {
  Workout _workout;

  WorkoutCover(Workout workout, {Key key}) : super(key: key) {
    _workout = workout;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            // color: Color(_workout.color), //todo category colors
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Expanded(child: Center(child: Text(_workout.title)))
        ]));
  }
}
