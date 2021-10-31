// Copyright (C) 2019–2021 Miroslav Mazel
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version. As an additional permission under
// section 7, you are allowed to distribute the software through an app
// store, even if that store has restrictive terms and conditions that
// are incompatible with the AGPL, provided that the source is also
// available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'package:feeel/db/db_helper.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/view/workout.dart';
import 'package:feeel/models/view/workout_listed.dart';
import 'package:feeel/screens/workout_detail/components/workout_pager.dart';
import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';
import 'package:feeel/i18n/translations.dart';

class WorkoutDetailScreen extends StatefulWidget {
  final WorkoutListed workoutListed;

  const WorkoutDetailScreen({Key? key, required this.workoutListed})
      : super(key: key);

  @override
  _WorkoutDetailScreenState createState() {
    return _WorkoutDetailScreenState();
  }
}

class _WorkoutDetailScreenState extends State<WorkoutDetailScreen> {
  late Future<Workout?> _future;

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
          Wakelock.disable();
          return true;
        },
        child: Scaffold(
            body: FutureBuilder<Workout?>(
                future: _future,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    Workout workout = snapshot.data!;

                    if (workout.workoutExercises.length <= 0) {
                      return Center(
                          child: Column(
                        children: [
                          Text("There are no exercises in this workout. :(".i18n),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                child: Text("Back to workout list".i18n),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              if (workout.type == WorkoutType.CUSTOM)
                                ElevatedButton(
                                  child: Text("Delete this workout".i18n),
                                  onPressed: () {
                                    if (workout.dbId != null) {
                                      DBHelper.db
                                          .deleteCustomWorkout(workout.dbId!);
                                      Navigator.pop(context);
                                    }
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
