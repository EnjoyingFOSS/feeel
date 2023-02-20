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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/screens/workout_detail/workout_detail.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/components/triangle_filled.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

import '../../../db/database.dart';
import '../../../utils/hero_util.dart';

class WorkoutListItem extends StatelessWidget {
  static const extent = 112.0;
  final Widget? trailing;
  final Workout workout;

  const WorkoutListItem(this.workout, {Key? key, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final origTitle = workout.title;
    final theme = Theme.of(context);

    return Material(
        color: Colors.transparent,
        child: // Row(children: [
            InkWell(
                onTap: () {
                  Navigator.push<void>(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return WorkoutDetailScreen(workout: workout);
                  }));
                },
                child: SizedBox(
                    height: WorkoutListItem.extent,
                    width: double.infinity,
                    child: Stack(
                      alignment: AlignmentDirectional.centerStart,
                      children: [
                        Container(
                            width: 96,
                            height: 96,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 0),
                            child: Hero(
                                tag: HeroUtil.getWorkoutHero(
                                    HeroType.illustration,
                                    workout.id,
                                    workout.type),
                                child: TriangleFilled(
                                  color: workout.category.colorSwatch
                                      .getColorByBrightness(FeeelShade.lightest,
                                          theme.brightness),
                                  seed: origTitle.hashCode,
                                ))),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 40, 8),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Hero(
                                    tag: HeroUtil.getWorkoutHero(HeroType.title,
                                        workout.id, workout.type),
                                    child: Material(
                                      //todo workaround for https://github.com/flutter/flutter/issues/30647
                                      type: MaterialType.transparency,
                                      child: AutoSizeText(
                                        (workout.type == WorkoutType.bundled)
                                            ? origTitle.i18n
                                            : origTitle,
                                        style: theme.textTheme.titleLarge,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 8,
                                ),
                                Hero(
                                  tag: HeroUtil.getWorkoutHero(
                                      HeroType.subtitle,
                                      workout.id,
                                      workout.type),
                                  child: Text(
                                    workout.category.translationKey.i18n,
                                    style: theme.textTheme.titleSmall?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: workout.category.colorSwatch
                                            .getColorByBrightness(
                                                FeeelShade.darker,
                                                theme.brightness)),
                                  ),
                                )
                              ],
                            )),
                        if (trailing != null)
                          Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: trailing)
                      ],
                    )))
        //])
        );
  }
}
