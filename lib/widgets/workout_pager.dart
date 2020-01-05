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

import 'package:feeel/controllers/workout_controller.dart';
import 'package:feeel/controllers/workout_page_types.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/widgets/workout_cover.dart';
import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';
import 'package:feeel/enums/workout_category.dart';

import 'exercise_page.dart';
import 'finish_page.dart';

class WorkoutPager extends StatefulWidget {
  final Workout workout;

  const WorkoutPager({Key key, @required this.workout}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WorkoutPagerState();
  }
}

class WorkoutPagerState extends State<WorkoutPager> {
  WorkoutController _workoutController;
  PageController _pageController = PageController();
  Color color;

  @override
  void initState() {
    super.initState();
    color = Color(widget.workout.category.colorInt);
    _workoutController = WorkoutController(widget.workout);
  }

  @override
  Widget build(BuildContext context) {
    _workoutController.setOnFinish(() {
      Wakelock.toggle(on: false);
      _pageController.jumpToPage(WorkoutPageTypes.FINISH.index);
    });

    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: <Widget>[
        WorkoutCover(
          workout: widget.workout,
          color: color,
          onPressed: () {
            _pageController.jumpToPage(WorkoutPageTypes.EXERCISE.index);
            _workoutController.start();
            Wakelock.toggle(on: true);
          },
        ),
        ExercisePage(
            workoutController: _workoutController,
            workout: widget.workout,
            color: color),
        FinishPage(
          color: color,
        )
      ],
      // physics: NeverScrollableScrollPhysics(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _workoutController.close();
  }
}
