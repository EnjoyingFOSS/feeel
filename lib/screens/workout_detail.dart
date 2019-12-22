// Copyright (C) 2019 Miroslav Mazel
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'package:feeel/controllers/workout_controller.dart';
import 'package:feeel/db/db_helper.dart';
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/models/workout_listed.dart';
import 'package:feeel/widgets/exercise_page.dart';
import 'package:feeel/widgets/finish_page.dart';
import 'package:feeel/widgets/workout_cover.dart';
import 'package:feeel/widgets/workout_pager.dart';
import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

class WorkoutDetailScreen extends StatefulWidget {
  final WorkoutListed workoutListed;

  const WorkoutDetailScreen({Key key, this.workoutListed}) : super(key: key);

  @override
  WorkoutDetailScreenState createState() {
    return WorkoutDetailScreenState();
  }
}

class WorkoutDetailScreenState extends State<WorkoutDetailScreen> {
  Future _future;

  @override
  void initState() {
    super.initState();
    _future = DBHelper.db
        .queryWorkout(widget.workoutListed.dbId, widget.workoutListed.type);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Wakelock.toggle(on: false);
          return true;
        },
        child: Scaffold(
            body: FutureBuilder<Workout>(
                future: _future,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    Workout workout = snapshot.data;

                    if (workout.workoutExercises.length <= 0) {
                      return Center(
                          child: Column(
                        children: [
                          Text("There are no exercises in this workout. :("),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              FlatButton(
                                child: Text("Back to workout list"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              if (workout.type == WorkoutType.CUSTOM)
                                RaisedButton(
                                  child: Text("Delete this workout"),
                                  onPressed: () {
                                    DBHelper.db
                                        .deleteCustomWorkout(workout.dbId);
                                    Navigator.pop(context);
                                  },
                                )
                            ],
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ));
                    } else {
                      return WorkoutPager(workout: workout);
                    }
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })));
  }
}
