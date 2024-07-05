// Copyright Miroslav Mazel et al.
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// As an additional permission under section 7, you are allowed to distribute
// the software through an app store, even if that store has restrictive terms
// and conditions that are incompatible with the AGPL, provided that the source
// is also available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// As a limitation under section 7, all unofficial builds and forks of the app
// must be clearly labeled as unofficial in the app's name (e.g. "Feeel
// UNOFFICIAL", never just "Feeel") or use a different name altogether.
// If any code changes are made, the fork should use a completely different name
// and app icon. All unofficial builds and forks MUST use a different
// application ID, in order to not conflict with a potential official release.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'package:feeel/components/triangle_filled.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/utils/format_util.dart';
import 'package:feeel/utils/hero_util.dart';
import 'package:feeel/utils/locale_util.dart';
import 'package:flutter/material.dart';

class WorkoutHeader extends StatelessWidget {
  final Workout workout;
  final FeeelSwatch colorSwatch;
  final int? workoutDuration;

  const WorkoutHeader(
      {Key? key,
      required this.workout,
      required this.colorSwatch,
      this.workoutDuration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title = workout.title;
    final fgColor =
        colorSwatch.getColor(FeeelShade.dark.invertIfDark(theme.brightness));

    final String translatedCategory = workout.category.getTranslation(context);
    return Stack(clipBehavior: Clip.none, children: [
      Positioned.directional(
          textDirection: Directionality.of(context),
          start: -12,
          width: 208,
          height: 208,
          child: Hero(
              tag: HeroUtil.getWorkoutHero(
                  HeroType.illustration, workout.id, workout.type),
              child: TriangleFilled(
                  color: colorSwatch.getColor(
                      FeeelShade.lightest.invertIfDark(theme.brightness)),
                  seed: title.hashCode))),
      Positioned.directional(
          textDirection: Directionality.of(context),
          top: 8,
          start: 8,
          child: BackButton(color: fgColor)),
      Container(
          padding:
              const EdgeInsets.only(left: 80, top: 8, bottom: 16, right: 8),
          height: 208,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(children: [
                Expanded(
                    child: Align(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Hero(
                    tag: HeroUtil.getWorkoutHero(
                        HeroType.title, workout.id, workout.type),
                    child: Material(
                        //TODO workaround for https://github.com/flutter/flutter/issues/30647
                        type: MaterialType.transparency,
                        child: Text(
                            workout.type == WorkoutType.bundled
                                ? LocaleUtil.getWorkoutTranslation(
                                    workout, Localizations.localeOf(context))
                                : workout.title,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.appBarTheme.titleTextStyle
                                ?.copyWith(color: fgColor))),
                  ),
                )),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Hero(
                      tag: HeroUtil.getWorkoutHero(
                          HeroType.subtitle, workout.id, workout.type),
                      child: Text(translatedCategory,
                          style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: colorSwatch.getColor(FeeelShade.darker
                                  .invertIfDark(theme.brightness)))),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    if (workoutDuration != null)
                      Text(FormatUtil.getDuration(context, workoutDuration!),
                          style: FormatUtil.durationTextStyle)
                  ],
                )
              ])))
    ]);
  }
}
