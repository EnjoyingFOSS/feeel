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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:feeel/components/triangle_filled.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/screens/workout_detail/workout_detail.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/utils/hero_util.dart';
import 'package:feeel/utils/locale_util.dart';
import 'package:flutter/material.dart';

class WorkoutListItem extends StatelessWidget {
  static const extent = 112.0;
  final Widget? trailing;
  final Workout workout;
  final FeeelSwatch colorSwatch;

  const WorkoutListItem(this.workout,
      {required this.colorSwatch, Key? key, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final origTitle = workout.title;
    final theme = Theme.of(context);

    return Material(
        color: Colors.transparent,
        child: // Row(children: [
            InkWell(
                onTap: () async {
                  await Navigator.push<void>(context,
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
                                  color: colorSwatch.getColor(FeeelShade
                                      .lightest
                                      .invertIfDark(theme.brightness)),
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
                                      //TODO workaround for https://github.com/flutter/flutter/issues/30647
                                      type: MaterialType.transparency,
                                      child: AutoSizeText(
                                        (workout.type == WorkoutType.bundled)
                                            ? LocaleUtil.getWorkoutTranslation(
                                                workout,
                                                Localizations.localeOf(context))
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
                                    workout.category.getTranslation(context),
                                    style: theme.textTheme.titleSmall?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: colorSwatch.getColor(FeeelShade
                                            .darker
                                            .invertIfDark(theme.brightness))),
                                  ),
                                )
                              ], //TODO show workout duration here too
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
