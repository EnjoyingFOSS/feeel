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

import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/utils/duration_util.dart';
import 'package:feeel/widgets/triangle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:feeel/models/view/workout.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:feeel/enums/workout_category.dart';

import 'workout_exercise_item.dart';

class WorkoutCover extends StatelessWidget {
  final Workout workout;
  final void Function() startWorkout;
  final FeeelSwatch colorSwatch;
  final PREFIX_ROWS = 2;

  WorkoutCover(
      {Key? key,
      required this.workout,
      required this.colorSwatch,
      required this.startWorkout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title = workout.title;
    final fgColor =
        colorSwatch.getColorByBrightness(FeeelShade.DARK, theme.brightness);
    final String subtitleCategory = workout.category.translationKey.i18n;

    return SafeArea(
        child: Stack(children: <Widget>[
      CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
              padding: EdgeInsets.only(bottom: 80),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    switch (index) {
                      case 0:
                        return Stack(children: [
                          Positioned(
                              left: -12,
                              width: 208,
                              height: 208,
                              //todo child: Hero(tag: workout.title + "\triangle/",
                              child: Triangle(
                                  color: colorSwatch.getColorByBrightness(
                                      FeeelShade.LIGHTEST, theme.brightness),
                                  seed: title.hashCode)),
                          // ),
                          Positioned(
                              top: 8,
                              left: 8,
                              child: BackButton(color: fgColor)),
                          Container(
                              padding: EdgeInsets.only(
                                  left: 80, top: 8, bottom: 16, right: 8),
                              height: 208,
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(children: [
                                    Expanded(
                                        child: Align(
                                      // child: Hero(tag: workout.title + "\title/",
                                      child: Text(workout.title.i18n,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme
                                              .appBarTheme.textTheme?.headline6
                                              ?.copyWith(color: fgColor)), //),
                                      alignment: Alignment.bottomLeft,
                                    )),
                                    Container(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        // Hero(tag: subtitleCategory + "\subtitle/", child:
                                        Text(subtitleCategory,
                                            style: theme.textTheme.subtitle2
                                                ?.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    color: colorSwatch
                                                        .getColorByBrightness(
                                                            FeeelShade.DARKER,
                                                            theme
                                                                .brightness))), //),
                                        Container(
                                          width: 16,
                                        ),
                                        Text(DurationUtil.getDurationLongform(
                                            workout.duration))
                                      ],
                                    )
                                  ])))
                        ]);
                      case 1:
                        return Container(
                          height: 24,
                        );
                      default:
                        final workoutExercise =
                            workout.workoutExercises[index - PREFIX_ROWS];
                        return WorkoutExerciseItem(
                          workoutExercise: workoutExercise,
                          duration: workoutExercise.duration ??
                              workout.exerciseDuration,
                        );
                    }
                  },
                  childCount: workout.workoutExercises.length + PREFIX_ROWS,
                ),
              )),
        ],
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: FloatingActionButton.extended(
                icon: Icon(Icons.play_arrow),
                label: Text("Start workout".i18n),
                onPressed: startWorkout,
                backgroundColor: fgColor,
              )))
    ]));
  }
}
