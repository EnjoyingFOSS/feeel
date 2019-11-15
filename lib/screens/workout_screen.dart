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

import 'package:feeel/helpers/db_helper.dart';
import 'package:feeel/helpers/tts_helper.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/models/workout_listed.dart';
import 'package:feeel/widgets/exercise_page.dart';
import 'package:feeel/widgets/expandable_card.dart';
import 'package:feeel/widgets/workout_cover.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatefulWidget {
  final WorkoutListed workoutListed;

  const WorkoutScreen({Key key, this.workoutListed}) : super(key: key);

  @override
  WorkoutScreenState createState() {
    return WorkoutScreenState();
  }
}

class WorkoutScreenState extends State<WorkoutScreen> {
  static const int BEGIN_SCREEN_COUNT = 1;
  static const int END_SCREEN_COUNT = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<Workout>(
            future: DBHelper.db.queryWorkout(widget.workoutListed.dbId),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                Workout workout = snapshot.data;

                return PageView.builder(
                  itemBuilder: (context, i) {
                    if (i < BEGIN_SCREEN_COUNT) {
                      return WorkoutCover(workout); //todo
                    } else if (i >=
                        workout.workoutExercises.length + BEGIN_SCREEN_COUNT) {
                      return Stack(); //todo
                    } else
                      return ExercisePage(
                          workoutExercise:
                              workout.workoutExercises[i - BEGIN_SCREEN_COUNT]);
                  },
                  itemCount: workout.workoutExercises.length +
                      BEGIN_SCREEN_COUNT +
                      END_SCREEN_COUNT,
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }

  @override
  void dispose() {
    super.dispose();
    TTSHelper.tts.stop(); //todo do I want to stop on dispose?
  }
}
