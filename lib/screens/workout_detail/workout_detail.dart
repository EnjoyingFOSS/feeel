// Copyright (C) 2019 Miroslav Mazel
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

import 'dart:io';

import 'package:feeel/db/database.dart';
import 'package:feeel/db/full_workout.dart';
import 'package:feeel/enums/workout_category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wakelock/wakelock.dart';

import 'components/empty_workout.dart';
import 'components/workout_header.dart';
import 'components/workout_pager.dart';

class WorkoutDetailScreen extends StatefulWidget {
  final Workout workout;

  const WorkoutDetailScreen({Key? key, required this.workout})
      : super(key: key);

  @override
  State<WorkoutDetailScreen> createState() {
    return _WorkoutDetailScreenState();
  }
}

class _WorkoutDetailScreenState extends State<WorkoutDetailScreen> {
  late Future<FullWorkout> _future;

  @override
  void initState() {
    super.initState();
    _future = Provider.of<FeeelDB>(context, listen: false)
        .queryFullWorkout(widget.workout);
  }

  @override
  Widget build(BuildContext context) {
    final colorSwatch =
        WorkoutCategory.fromDBValue(widget.workout.category).colorSwatch;
    return WillPopScope(
        onWillPop: () async {
          if (!Platform.isLinux) {
            Wakelock.disable();
          } //todo use provider for wakelock?
          return true;
        },
        child: Scaffold(
            body: FutureBuilder<FullWorkout>(
                future: _future,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final fullWorkout = snapshot.data!;
                    if (fullWorkout.workoutExercises.isNotEmpty) {
                      return WorkoutPager(
                        fullWorkout: fullWorkout,
                      );
                    } else {
                      return SafeArea(
                          child: Column(children: [
                        //todo make scrollable (for landscape)
                        WorkoutHeader(
                            workout: widget.workout, colorSwatch: colorSwatch),
                        Flexible(child: EmptyWorkout(fullWorkout: fullWorkout))
                      ]));
                    }
                  } else {
                    return SafeArea(
                        child: Column(children: [
                      //todo make scrollable (for landscape)
                      WorkoutHeader(
                        workout: widget.workout,
                        colorSwatch: colorSwatch,
                      ),
                      const Flexible(
                          child: Center(
                        child: CircularProgressIndicator.adaptive(),
                      ))
                    ]));
                  }
                })));
  }
}
