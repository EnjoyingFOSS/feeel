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

import 'dart:async';

import 'package:feeel/components/body_container.dart';
import 'package:feeel/models/full_workout.dart';
import 'package:feeel/screens/workout_detail/components/workout_exercise_list.dart';
import 'package:feeel/screens/workout_detail/components/workout_header.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    if (fullWorkout.translatedExercises.isNotEmpty) {
      await precacheImage(
          Image.asset(AssetUtil.getExerciseImage(
                  fullWorkout.translatedExercises.first.exercise))
              .image, //TODO precache inside workout page instead?
          context);
    }
  }

  @override
  Widget build(BuildContext context) {
    unawaited(_precacheFirstImage(context));
    final brightness = Theme.of(context).brightness;
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
                label: Text(AppLocalizations.of(context)!.btnStartWorkout),
                onPressed: startWorkout,
                backgroundColor: colorSwatch
                    .getColor(FeeelShade.dark.invertIfDark(brightness)),
                foregroundColor: colorSwatch.getForegroundColor(
                    FeeelShade.dark.invertIfDark(brightness)),
              )))
    ])));
  }
}
