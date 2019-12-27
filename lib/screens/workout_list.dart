import 'package:feeel/db/db_helper.dart';
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/exercise.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/models/workout_listed.dart';
import 'package:feeel/screens/workout_detail.dart';
import 'package:feeel/screens/workout_editor.dart';
import 'package:feeel/widgets/triangle.dart';
import 'package:feeel/widgets/workout_list_item.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class WorkoutListScreen extends StatefulWidget {
  @override
  WorkoutListScreenState createState() {
    return WorkoutListScreenState();
  }
}

class WorkoutListScreenState extends State<WorkoutListScreen> {
  // @override
  // void initState() {
  //   _future = ;
  //   super.initState();
  // }

  static const String _MENU_DELETE = "delete";
  static const String _MENU_EDIT = "edit";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //todo do I need SafeArea here?
        backgroundColor: Theme.of(context).backgroundColor,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return WorkoutEditorScreen();
            })).then((_) {
              setState(() {});
            });
          },
        ),
        body: FutureBuilder<List<WorkoutListed>>(
            future: DBHelper.db.listWorkouts(),
            builder: (BuildContext context,
                AsyncSnapshot<List<WorkoutListed>> snapshot) {
              if (snapshot.hasData) {
                var workoutsListed = snapshot.data;

                return CustomScrollView(slivers: <Widget>[
                  SliverPadding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      sliver: SliverAppBar(
                        brightness: Theme.of(context).brightness,
                        centerTitle: false,
                        title: Text.rich(
                            //todo add varying spans, e.g. "Feeel energized", "Feeel goood", "Feeel fresh" ,"Feeel the burn", ...
                            TextSpan(children: <InlineSpan>[
                          TextSpan(
                            text: "Feeel ",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight
                                    .w900, //todo extract into parent textspan
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
                      )),
                  SliverPadding(
                      padding: EdgeInsets.only(bottom: 80),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            WorkoutListed workoutListed = workoutsListed[index];
                            if (workoutListed.type == WorkoutType.CUSTOM)
                              return WorkoutListItem(
                                workoutListed,
                                trailing: PopupMenuButton(
                                  itemBuilder: (context) {
                                    return [
                                      PopupMenuItem<String>(
                                          child: Text("Edit".i18n),
                                          value: _MENU_EDIT),
                                      PopupMenuItem<String>(
                                          child: Text("Delete".i18n),
                                          value: _MENU_DELETE),
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
                                    }
                                  },
                                ),
                              );
                            else
                              return WorkoutListItem(workoutListed);
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
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => WorkoutEditorScreen(
                  workoutListed: workoutListed,
                ))).then((_) {
      setState(() {});
    });
  }
}
