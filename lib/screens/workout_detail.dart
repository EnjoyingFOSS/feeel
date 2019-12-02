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
import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/models/workout_listed.dart';
import 'package:feeel/widgets/exercise_page.dart';
import 'package:feeel/widgets/finish_page.dart';
import 'package:feeel/widgets/workout_cover.dart';
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

enum WorkoutPages { COVER, EXERCISE, FINISH }

class WorkoutDetailScreenState extends State<WorkoutDetailScreen> {
  static const DEFAULT_COLOR = Color(0xFF0061DF);

  WorkoutController _workoutController;
  PageController _pageController = PageController();
  int _seconds;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Wakelock.toggle(on: false);
          return true;
        },
        child: Scaffold(
            body: FutureBuilder<Workout>(
                future: DBHelper.db.queryWorkout(widget.workoutListed.dbId),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    Workout workout = snapshot.data;

                    if (_workoutController != null) {
                      _workoutController.close();
                    }
                    _workoutController = WorkoutController(workout);
                    _workoutController.setOnFinish(() {
                      Wakelock.toggle(on: false);
                      _pageController.jumpToPage(WorkoutPages
                    .FINISH.index);
                    });

                    return PageView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: _pageController,
                      children: <Widget>[
                        WorkoutCover(
                          workout: workout,
                          color: DEFAULT_COLOR,
                          onPressed: () {
                            _pageController
                                .jumpToPage(WorkoutPages
                              .EXERCISE.index);
                            _workoutController.start();
                            Wakelock.toggle(on: true);
                          },
                        ),
                        ExercisePage(
                            workoutController: _workoutController,
                            workout: workout,
                            color: DEFAULT_COLOR),
                        FinishPage(
                          color: DEFAULT_COLOR,
                        )
                      ],
                      // physics: NeverScrollableScrollPhysics(),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })));
  }

  @override
  void dispose() {
    super.dispose();
    _workoutController.close();
  }
}
