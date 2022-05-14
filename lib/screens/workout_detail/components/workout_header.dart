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

import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';

import '../../../components/triangle.dart';
import '../../../enums/workout_type.dart';
import '../../../models/view/workout_listed.dart';
import '../../../theming/feeel_shade.dart';
import '../../../utils/duration_util.dart';
import '../../../utils/hero_util.dart';

class WorkoutHeader extends StatelessWidget {
  final WorkoutListed workoutListed;
  final FeeelSwatch colorSwatch;
  final int? workoutDuration;

  const WorkoutHeader(
      {Key? key,
      required this.workoutListed,
      required this.colorSwatch,
      this.workoutDuration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title = workoutListed.title;
    final fgColor =
        colorSwatch.getColorByBrightness(FeeelShade.DARK, theme.brightness);
    final String translatedCategory =
        workoutListed.category.translationKey.i18n;
    return Stack(children: [
      Positioned.directional(
          textDirection: Directionality.of(context),
          start: -12,
          width: 208,
          height: 208,
          child: Hero(
              tag: HeroUtil.getWorkoutHero(HeroType.Illustration,
                  workoutListed.dbId, workoutListed.type),
              child: Triangle(
                  color: colorSwatch.getColorByBrightness(
                      FeeelShade.LIGHTEST, theme.brightness),
                  seed: title.hashCode))),
      Positioned.directional(
          textDirection: Directionality.of(context),
          top: 8,
          start: 8,
          child: BackButton(color: fgColor)),
      Container(
          padding: EdgeInsets.only(left: 80, top: 8, bottom: 16, right: 8),
          height: 208,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(children: [
                Expanded(
                    child: Align(
                  child: Hero(
                    tag: HeroUtil.getWorkoutHero(
                        HeroType.Title, workoutListed.dbId, workoutListed.type),
                    child: Material(
                        //todo workaround for https://github.com/flutter/flutter/issues/30647
                        type: MaterialType.transparency,
                        child: Text(
                            workoutListed.type == WorkoutType.DEFAULT
                                ? workoutListed.title.i18n
                                : workoutListed.title,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.appBarTheme.titleTextStyle
                                ?.copyWith(color: fgColor))),
                  ),
                  alignment: AlignmentDirectional.bottomStart,
                )),
                Container(
                  height: 8,
                ),
                Row(
                  children: [
                    Hero(
                      tag: HeroUtil.getWorkoutHero(HeroType.Subtitle,
                          workoutListed.dbId, workoutListed.type),
                      child: Text(translatedCategory,
                          style: theme.textTheme.subtitle2?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: colorSwatch.getColorByBrightness(
                                  FeeelShade.DARKER, theme.brightness))),
                    ),
                    Container(
                      width: 16,
                    ),
                    if (workoutDuration != null)
                      Text(DurationUtil.getDurationLongform(workoutDuration!))
                  ],
                )
              ])))
    ]);
  }
}
