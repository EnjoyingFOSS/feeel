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

import 'dart:math';

import 'package:feeel/providers/feeel_swatch_provider.dart';
import 'package:feeel/providers/workout_provider.dart';
import 'package:feeel/screens/workout_list/components/workout_list_item.dart';
import 'package:feeel/screens/workout_list/components/workout_list_item_menu.dart';
import 'package:feeel/screens/workout_list/components/workout_list_menu.dart';
import 'package:feeel/screens/workout_list/providers/workout_list_provider.dart';
import 'package:feeel/theming/feeel_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class WorkoutListListView extends ConsumerWidget {
  static const _crossAxisSpacing = 16.0;

  const WorkoutListListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workoutAsyncValue = ref.watch(workoutProvider);
    final workoutListValue = ref.watch(workoutListProvider);
    final colorSwatches = ref.read(feeelSwatchProvider);

    final gridColumns = (min(
                MediaQuery.sizeOf(context).width, LayoutXL.cols12.width) /
            (600 + _crossAxisSpacing)) //TODO does the 600 need to be hardcoded?
        .ceil();

    return workoutAsyncValue.when(
        error: (Object error, StackTrace stackTrace) {
          return Center(child: Text(":( There was an error"));
        }, //TODO error component !!!
        loading: () =>
            const Center(child: CircularProgressIndicator.adaptive()),
        data: (data) {
          final workouts = data.workouts;
          return AnimationLimiter(
              child:
                  CustomScrollView(clipBehavior: Clip.none, slivers: <Widget>[
            const SliverAppBar(
              //TODO add floating: true, but with dynamic shadow
              title: Text.rich(
                  //TODO add varying spans, e.g. "Feeel energized", "Feeel goood", "Feeel fresh" ,"Feeel the burn", ...
                  TextSpan(children: <InlineSpan>[
                TextSpan(text: "Feeel "),
                // TODO TextSpan(
                //   text: "energized",
                //   style: TextStyle(
                //       fontSize: 32,
                //       fontWeight: FontWeight.w900,
                //       color:
                //           Theme.of(context).colorScheme.onBackground),
                // )
              ])),
              actions: <Widget>[
                WorkoutListMenu(),
              ],
            ),
            if (workoutListValue.exporting || workoutListValue.importing)
              const SliverToBoxAdapter(
                  child:
                      LinearProgressIndicator()), //TODO is there a way to get it to be at the bottom of the app bar?
            SliverPadding(
                padding: const EdgeInsets.only(bottom: 80),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: gridColumns,
                      crossAxisSpacing: _crossAxisSpacing,
                      mainAxisExtent: WorkoutListItem.extent),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final workout = workouts[index];
                      return AnimationConfiguration.staggeredGrid(
                          position: index,
                          duration: const Duration(milliseconds: 375),
                          columnCount: gridColumns,
                          child: FadeInAnimation(
                              child: WorkoutListItem(
                            workout,
                            colorSwatch:
                                colorSwatches[workout.category.feeelColor]!,
                            trailing: WorkoutListItemMenu(
                              workout: workout,
                            ),
                          )));
                    },
                    childCount: workouts.length,
                  ),
                ))
          ]));
        });
  }
}
