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

import 'dart:io';

import 'package:feeel/controllers/workout_controller.dart';
import 'package:feeel/controllers/workout_page_types.dart';
import 'package:feeel/db/asset_helper.dart';
import 'package:feeel/models/view/workout.dart';
import 'package:feeel/models/view/workout_listed.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/screens/workout_detail/components/workout_cover.dart';
import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

import 'exercise_page.dart';
import 'finish_page.dart';

class WorkoutPager extends StatefulWidget {
  final Workout workout;
  final WorkoutListed workoutListed;

  const WorkoutPager(
      {Key? key, required this.workout, required this.workoutListed})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WorkoutPagerState();
  }
}

class _WorkoutPagerState extends State<WorkoutPager> {
  PageController _pageController = PageController();
  late WorkoutController _workoutController;
  late FeeelSwatch colorSwatch;

  @override
  void initState() {
    super.initState();
    colorSwatch = widget.workout.category.colorSwatch;
    _workoutController = WorkoutController(widget.workout);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (widget.workout.workoutExercises.length > 0) {
      final imageSlug = widget.workout.workoutExercises[0].exercise.imageSlug;
      if (imageSlug != null)
        precacheImage(
            Image.asset(AssetHelper.getImage(imageSlug))
                .image, //todo precache inside workout page instead?
            context);
    }
  }

  @override
  Widget build(BuildContext context) {
    _workoutController.setOnFinish(() {
      if (!Platform.isLinux) Wakelock.disable();
      _pageController.jumpToPage(WorkoutPageTypes.FINISH.index);
    });

    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: <Widget>[
        WorkoutCover(
          workout: widget.workout,
          workoutListed: widget.workoutListed,
          colorSwatch: colorSwatch,
          startWorkout: () {
            _pageController.jumpToPage(WorkoutPageTypes.EXERCISE.index);
            _workoutController.start();
            if (!Platform.isLinux) Wakelock.enable(); //
          },
        ),
        ExercisePage(
            workoutController: _workoutController,
            workout: widget.workout,
            colorSwatch: colorSwatch),
        FinishPage(
          color: colorSwatch.getColorByBrightness(
              FeeelShade.DARK, Theme.of(context).brightness),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _workoutController.close();
  }
}
