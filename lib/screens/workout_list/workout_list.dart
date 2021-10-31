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

import 'package:feeel/db/db_helper.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/view/workout_listed.dart';
import 'package:feeel/screens/settings/settings.dart';
import 'package:feeel/screens/workout_editor/workout_editor.dart';
import 'package:feeel/screens/workout_list/components/workout_list_item.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class WorkoutListScreen extends StatefulWidget {
  @override
  _WorkoutListScreenState createState() {
    return _WorkoutListScreenState();
  }
}

class _WorkoutListScreenState extends State<WorkoutListScreen> {
  static const String _MENU_DELETE = "delete";
  static const String _MENU_EDIT = "edit";
  static const String _MENU_DUPLICATE = "duplicate";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //todo do I need SafeArea here?
        backgroundColor: Theme.of(context).backgroundColor,
        floatingActionButton: FloatingActionButton(
          tooltip: "Create custom workout".i18n,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push<void>(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return WorkoutEditorScreen();
            })).then((_) {
              setState(() {});
            });
          },
        ),
        body: FutureBuilder<List<WorkoutListed>>(
            future: DBHelper.db.queryAllWorkouts(),
            builder: (BuildContext context,
                AsyncSnapshot<List<WorkoutListed>> snapshot) {
              if (snapshot.hasData) {
                var workoutsListed = snapshot.data!;

                return CustomScrollView(slivers: <Widget>[
                  SliverPadding(
                      padding: EdgeInsets.symmetric(vertical: 8),
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
                                    color:
                                        Theme.of(context).colorScheme.primary),
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
                              Icons.settings,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            tooltip: "Settings".i18n,
                            onPressed: () {
                              Navigator.push<void>(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SettingsScreen()));
                            },
                          )
                        ],
                      )),
                  SliverPadding(
                      padding: EdgeInsets.only(bottom: 80),
                      sliver: SliverList(
                        //todo consider using SliverFixedExtentList in the future, but still allow large text
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            WorkoutListed workoutListed = workoutsListed[index];
                            return WorkoutListItem(
                              workoutListed,
                              trailing: PopupMenuButton(
                                itemBuilder: (context) {
                                  return workoutListed.type ==
                                          WorkoutType.CUSTOM
                                      ? [
                                          PopupMenuItem<String>(
                                              child: Text("Edit".i18n),
                                              value: _MENU_EDIT),
                                          PopupMenuItem<String>(
                                              child: Text("Delete".i18n),
                                              value: _MENU_DELETE),
                                          PopupMenuItem<String>(
                                              child: Text("Duplicate".i18n),
                                              value: _MENU_DUPLICATE),
                                        ]
                                      : [
                                          PopupMenuItem<String>(
                                              child: Text("Duplicate".i18n),
                                              value: _MENU_DUPLICATE),
                                        ];
                                },
                                onSelected: (String value) {
                                  switch (value) {
                                    case _MENU_DELETE:
                                      _onDeleteCustom(workoutListed);
                                      break;
                                    case _MENU_EDIT:
                                      _onEditCustom(workoutListed);
                                      break;
                                    case _MENU_DUPLICATE:
                                      _onDuplicate(workoutListed);
                                      break;
                                  }
                                },
                              ),
                            );
                          },
                          childCount: workoutsListed.length,
                        ),
                      ))
                ]);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }

  void _onDeleteCustom(WorkoutListed workoutListed) {
    // todo allow an undo !!!
    DBHelper.db.deleteCustomWorkout(workoutListed.dbId).then((_) {
      setState(() {});
    });
  }

  void _onEditCustom(WorkoutListed workoutListed) {
    Navigator.push<void>(
        context,
        MaterialPageRoute(
            builder: (context) => WorkoutEditorScreen(
                  workoutListed: workoutListed,
                ))).then((_) {
      setState(() {});
    });
  }

  void _onDuplicate(WorkoutListed origListed) async {
    final newListed =
        await DBHelper.db.duplicateWorkout(origListed.dbId, origListed.type);
    Navigator.push<void>(
        context,
        MaterialPageRoute(
            builder: (context) => WorkoutEditorScreen(
                  workoutListed: newListed,
                ))).then((_) {
      setState(() {});
    });
  }
}
