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

import 'dart:math';

import 'package:feeel/components/body_container.dart';
import 'package:feeel/components/disclaimer_sheet.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/screens/workout_list/components/workout_add_speed_dial.dart';
import 'package:feeel/screens/workout_list/components/workout_list_item.dart';
import 'package:feeel/screens/workout_list/components/workout_list_item_menu.dart';
import 'package:feeel/screens/workout_list/components/workout_list_menu.dart';
import 'package:feeel/theming/feeel_grid.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../db/preference_keys.dart';

class WorkoutListScreen extends StatefulWidget {
  const WorkoutListScreen({super.key});

  @override
  State<WorkoutListScreen> createState() {
    return _WorkoutListScreenState();
  }
}

enum _WorkoutListActivity {
  exporting("Export in progress..."),
  importing("Import in progress...");

  final String translationKey;

  const _WorkoutListActivity(this.translationKey);
}

class _WorkoutListScreenState extends State<WorkoutListScreen> {
  _WorkoutListActivity? _curActivity;

  // Unhandled Exception: setState() called after dispose() after canceling editing
  //todo allow showing disclaimer from Settings too!

  @override
  void initState() {
    // todo move these to the pager
    // todo CHECK IF USER IS UPGRADING FROM < 3.0.0 AND ASK HIM IF TO ALLOW INTERNET (have it by default post-3.0.0, but still in settings)
    // todo turn this screen into a stateless widget, use WidgetsBinding.instance.addPostFrameCallback((_) => yourFunction(context)) INSTEAD;
    SharedPreferences.getInstance().then((prefs) {
      //todo is the initState method the right place for this?
      if (prefs.getBool(PreferenceKeys.showDisclaimerPref) ?? true) {
        DisclaimerSheet.showSheet(context);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //todo implement pull to refresh gesture
    return BodyContainer(
        child: Stack(children: [
      FutureBuilder<List<Workout>>(
          future: Provider.of<FeeelDB>(context)
              .queryAllWorkouts, //todo need to refresh, watch for changes
          builder:
              (BuildContext context, AsyncSnapshot<List<Workout>> snapshot) {
            if (snapshot.hasData) {
              final workouts = snapshot.data!;

              const crossAxisSpacing = 16.0;
              final gridColumns = (min(MediaQuery.of(context).size.width,
                          LayoutXL.cols12.width) /
                      (600 +
                          crossAxisSpacing)) //todo does the 600 need to be hardcoded?
                  .ceil();

              return AnimationLimiter(
                  child: CustomScrollView(
                      clipBehavior: Clip.none,
                      slivers: <Widget>[
                    SliverAppBar(
                      //todo add floating: true, but with dynamic shadow
                      title: Text.rich(
                          //todo add varying spans, e.g. "Feeel energized", "Feeel goood", "Feeel fresh" ,"Feeel the burn", ...
                          TextSpan(children: <InlineSpan>[
                        TextSpan(text: "Feeel "),
                        // todo TextSpan(
                        //   text: "energized",
                        //   style: TextStyle(
                        //       fontSize: 32,
                        //       fontWeight: FontWeight.w900,
                        //       color:
                        //           Theme.of(context).colorScheme.onBackground),
                        // )
                      ])),
                      actions: <Widget>[
                        WorkoutListMenu(
                            afterAction: () => setState(
                                () {}), //todo this is a hack, remove after moving to riverpod!
                            onExportStart: () => setState(() {
                                  _curActivity = _WorkoutListActivity.exporting;
                                }),
                            onExportEnd: () => setState(() {
                                  if (_curActivity ==
                                      _WorkoutListActivity.exporting) {
                                    _curActivity = null;
                                  }
                                })),
                      ],
                    ),
                    if (_curActivity != null)
                      SliverToBoxAdapter(
                          child: Center(
                              child: Container(
                                  margin: const EdgeInsets.all(16),
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1000),
                                      border: Border.all(
                                          width: 2,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground
                                              .withAlpha(63))),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const CircularProgressIndicator
                                            .adaptive(), //todo replaces with progress indicators on the relevant menu icons
                                        const SizedBox(width: 12),
                                        Text(_curActivity!.translationKey.i18n)
                                      ])))),
                    SliverPadding(
                        padding: const EdgeInsets.only(bottom: 80),
                        sliver: SliverGrid(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: gridColumns,
                                  crossAxisSpacing: crossAxisSpacing,
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
                                    trailing: WorkoutListItemMenu(
                                      workout: workout,
                                      onExportStart: () => setState(() {
                                        _curActivity =
                                            _WorkoutListActivity.exporting;
                                      }),
                                      onExportEnd: () => setState(() {
                                        if (_curActivity ==
                                            _WorkoutListActivity.exporting) {
                                          _curActivity = null;
                                        }
                                      }),
                                      afterAction: () => setState(
                                          () {}), //todo this is a hack, remove after moving to riverpod!
                                    ),
                                  )));
                            },
                            childCount: workouts.length,
                          ),
                        ))
                  ]));
            } else {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
          }),
      Positioned.directional(
          bottom: 16,
          end: 16,
          textDirection: Directionality.of(context),
          child: WorkoutAddSpeedDial(
            afterCreateOrImport: () => setState(() {}),
            onImportStart: () {
              setState(() {
                _curActivity = _WorkoutListActivity.importing;
              });
            },
            onImportEnd: () {
              if (_curActivity == _WorkoutListActivity.importing) {
                setState(() {
                  _curActivity = null;
                });
              }
            },
          )) //todo this is a hack, remove after moving to riverpod!
    ]));
  }
}
