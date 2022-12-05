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

import 'package:feeel/components/disclaimer_sheet.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/db/editable_workout.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/screens/settings/settings.dart';
import 'package:feeel/screens/workout_editor/workout_editor.dart';
import 'package:feeel/screens/workout_list/components/workout_list_item.dart';
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

class _WorkoutListScreenState extends State<WorkoutListScreen> {
  static const String _menuDelete = "delete";
  static const String _menuEdit = "edit";
  static const String _menuDuplicate = "duplicate";

  //todo allow showing disclaimer from Settings too!

  @override
  void initState() {
    // todo TURN THIS SCREEN INTO A STATELESS WIDGET, USE WidgetsBinding.instance.addPostFrameCallback((_) => yourFunction(context)) INSTEAD;
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
    return FutureBuilder<List<Workout>>(
        future: Provider.of<FeeelDB>(context).queryAllWorkouts,
        builder: (BuildContext context, AsyncSnapshot<List<Workout>> snapshot) {
          if (snapshot.hasData) {
            final workouts = snapshot.data!;

            const crossAxisSpacing = 16.0;
            final gridColumns =
                (MediaQuery.of(context).size.width / (600 + crossAxisSpacing))
                    .ceil();

            return AnimationLimiter(
                child: CustomScrollView(slivers: <Widget>[
              SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  sliver: SliverAppBar(
                    //todo add floating: true, but with dynamic shadow
                    title: Text.rich(
                        //todo add varying spans, e.g. "Feeel energized", "Feeel goood", "Feeel fresh" ,"Feeel the burn", ...
                        TextSpan(children: <InlineSpan>[
                      TextSpan(
                        text: "Feeel ",
                        style: Theme.of(context)
                            .appBarTheme
                            .titleTextStyle
                            ?.copyWith(
                                color: Theme.of(context).colorScheme.primary),
                      ),
                      // todo TextSpan(
                      //   text: "energized",
                      //   style: TextStyle(
                      //       fontSize: 32,
                      //       fontWeight: FontWeight.w900,
                      //       color:
                      //           Theme.of(context).colorScheme.onBackground),
                      // )
                    ])),
                    backgroundColor: Theme.of(context).backgroundColor,
                    actions: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        tooltip: "Create custom workout".i18n,
                        onPressed: () {
                          Navigator.push<void>(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return WorkoutEditorScreen();
                          })).then((_) {
                            setState(() {}); //todo get rid of setState!
                          }); //todo will need to refresh on coming back
                        },
                      )
                    ],
                  )),
              SliverPadding(
                  padding: const EdgeInsets.only(bottom: 80),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                              trailing: PopupMenuButton(
                                itemBuilder: (context) {
                                  return workout.type == WorkoutType.custom
                                      ? [
                                          PopupMenuItem<String>(
                                              value: _menuEdit,
                                              child: Text("Edit".i18n)),
                                          PopupMenuItem<String>(
                                              value: _menuDelete,
                                              child: Text("Delete".i18n)),
                                          PopupMenuItem<String>(
                                              value: _menuDuplicate,
                                              child: Text("Duplicate".i18n)),
                                        ]
                                      : [
                                          PopupMenuItem<String>(
                                              value: _menuDuplicate,
                                              child: Text("Duplicate".i18n)),
                                        ];
                                },
                                onSelected: (String value) {
                                  switch (value) {
                                    case _menuDelete:
                                      _onDeleteCustom(workout);
                                      break;
                                    case _menuEdit:
                                      _onEditCustom(workout);
                                      break;
                                    case _menuDuplicate:
                                      _onDuplicate(workout);
                                      break;
                                  }
                                },
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
        });
  }

  void _onDeleteCustom(Workout workoutListed) {
    // todo allow an undo !!!
    Provider.of<FeeelDB>(context, listen: false)
        .deleteWorkout(workoutListed.id)
        .then((_) {
      setState(() {}); //todo is this needed?
    });
  }

  void _onEditCustom(Workout workout) async {
    final navigator = Navigator.of(context);
    final fullWorkout = await Provider.of<FeeelDB>(context, listen: false)
        .queryFullWorkout(workout);
    navigator
        .push<void>(MaterialPageRoute(
            builder: (context) => WorkoutEditorScreen(
                  editableWorkout: EditableWorkout.fromWorkout(fullWorkout),
                )))
        .then((_) {
      setState(() {}); //todo is this needed?
    });
  }

  void _onDuplicate(Workout origWorkout) async {
    final navigator = Navigator.of(context);
    final origFullWorkout = await Provider.of<FeeelDB>(context, listen: false)
        .queryFullWorkout(origWorkout);
    final editableCopy = EditableWorkout.fromWorkout(origFullWorkout);
    editableCopy.dbId = null;
    editableCopy.type = WorkoutType.custom;

    navigator
        .push<void>(MaterialPageRoute(
            builder: (context) => WorkoutEditorScreen(
                  editableWorkout: editableCopy,
                )))
        .then((_) {
      setState(() {}); //todo is this needed?
    });
  }
}
