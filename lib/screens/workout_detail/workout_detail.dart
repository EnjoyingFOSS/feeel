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

import 'dart:io';

import 'package:feeel/db/database.dart';
import 'package:feeel/models/full_workout.dart';
import 'package:feeel/providers/db_provider.dart';
import 'package:feeel/providers/feeel_swatch_provider.dart';
import 'package:feeel/screens/workout_detail/components/empty_workout.dart';
import 'package:feeel/screens/workout_detail/components/workout_header.dart';
import 'package:feeel/screens/workout_detail/components/workout_pager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wakelock/wakelock.dart';

class WorkoutDetailScreen extends ConsumerWidget {
  final Workout workout;

  const WorkoutDetailScreen({Key? key, required this.workout})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final db = ref.read(dbProvider);
    final colorSwatch =
        ref.read(feeelSwatchProvider)[workout.category.feeelColor]!;
    return WillPopScope(
        onWillPop: () async {
          if (!Platform.isLinux) {
            Wakelock.disable();
          } //TODO use provider for wakelock?
          return true;
        },
        child: Scaffold(
            body: FutureBuilder<FullWorkout>(
                future: db.queryFullWorkout(
                    workout, Localizations.localeOf(context)),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final fullWorkout = snapshot.data!;
                    if (fullWorkout.workoutExercises.isNotEmpty) {
                      return WorkoutPager(
                          fullWorkout: fullWorkout,
                          colorSwatch: colorSwatch,
                          l10n: AppLocalizations.of(context)!);
                    } else {
                      return SafeArea(
                          child: Column(children: [
                        //TODO make scrollable (for landscape)
                        WorkoutHeader(
                            workout: workout, colorSwatch: colorSwatch),
                        Flexible(child: EmptyWorkout(fullWorkout: fullWorkout))
                      ]));
                    }
                  } else {
                    return SafeArea(
                        child: Column(children: [
                      //TODO make scrollable (for landscape)
                      WorkoutHeader(
                        workout: workout,
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
