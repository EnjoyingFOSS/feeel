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

import 'package:feeel/components/body_container.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:feeel/models/full_workout.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

import 'workout_exercise_list.dart';
import 'workout_header.dart';

class WorkoutCover extends StatelessWidget {
  final FullWorkout fullWorkout;
  final void Function() startWorkout;
  final FeeelSwatch colorSwatch;

  const WorkoutCover(
      {Key? key,
      required this.fullWorkout,
      required this.colorSwatch,
      required this.startWorkout})
      : super(key: key);

  Future<void> _precacheFirstImage(BuildContext context) async {
    //todo test
    final imageSlug = fullWorkout.exercises[0].imageSlug;
    precacheImage(
        Image.asset(AssetUtil.getImageOrPlaceholderPath(imageSlug))
            .image, //todo precache inside workout page instead?
        context);
  }

  @override
  Widget build(BuildContext context) {
    _precacheFirstImage(context);
    return SafeArea(
        child: BodyContainer(
            child: Stack(clipBehavior: Clip.none, children: <Widget>[
      CustomScrollView(
        clipBehavior: Clip.none,
        slivers: <Widget>[
          SliverToBoxAdapter(
              child: WorkoutHeader(
            workout: fullWorkout.workout,
            colorSwatch: colorSwatch,
            workoutDuration: fullWorkout.duration,
          )),
          SliverPadding(
              padding: const EdgeInsets.only(bottom: 80, top: 24),
              sliver: WorkoutExerciseList(
                  fullWorkout: fullWorkout, colorSwatch: colorSwatch)),
        ],
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: FloatingActionButton.extended(
                icon: const Icon(Icons.play_arrow),
                label: Text("Start workout".i18n),
                onPressed: startWorkout,
                backgroundColor: colorSwatch.getColorByBrightness(
                    FeeelShade.dark, Theme.of(context).brightness),
              )))
    ])));
  }
}
