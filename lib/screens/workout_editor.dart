import 'package:drag_list/drag_list.dart';
import 'package:feeel/db/db_helper.dart';
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/exercise.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/screens/exercise_picker.dart';

import '../models/workout.dart';

import '../models/workout_listed.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class WorkoutEditorScreen extends StatefulWidget {
  final WorkoutListed workoutListed;

  const WorkoutEditorScreen({Key key, this.workoutListed}) : super(key: key);

  @override
  WorkoutEditorScreenState createState() {
    return WorkoutEditorScreenState();
  }
}

class WorkoutEditorScreenState extends State<WorkoutEditorScreen> {
  Workout _editableWorkout;
  Future _future;
  final int DEFAULT_COUNTDOWN_DURATION = 5;
  final int DEFAULT_EXERCISE_DURATION = 30;
  final int DEFAULT_BREAK_DURATION = 10;
  final _titleController = TextEditingController();

  @override
  void initState() {
    _future = (widget.workoutListed == null)
        ? Future.value(Workout(
            type: WorkoutType.CUSTOM,
            workoutExercises: List<WorkoutExercise>(),
            countdownDuration: DEFAULT_COUNTDOWN_DURATION,
            breakDuration: DEFAULT_BREAK_DURATION,
            exerciseDuration: DEFAULT_EXERCISE_DURATION,
            category: WorkoutCategory.FULL_BODY))
        : DBHelper.db
            .queryWorkout(widget.workoutListed.dbId, widget.workoutListed.type);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: FutureBuilder(
              future: _future,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (_editableWorkout == null) {
                    //todo is this right, if I want to prevent overriding after first load?
                    _editableWorkout = snapshot.data;
                    _titleController.text = _editableWorkout.title;
                  }

                  var textStyle = TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).primaryColor);
                  var header = Row(children: <Widget>[
                    Container(
                      width: 4,
                    ),
                    CloseButton(),
                    Expanded(
                      child: Padding(
                          child: TextField(
                              style: textStyle,
                              controller: _titleController,
                              decoration: InputDecoration(
                                  hintStyle: textStyle.copyWith(
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withAlpha(64)),
                                  // border: InputBorder.none,
                                  filled: false,
                                  hintText: 'Workout title'.i18n)),
                          padding: EdgeInsets.only(left: 16, right: 16)),
                    ),
                  ]);

                  return Form(
                      child: (_editableWorkout.workoutExercises.isEmpty)
                          ? Column(
                              children: <Widget>[
                                header,
                                Spacer(), //todo is this the right way to center column content?
                                SizedBox(
                                  child: Image.asset("assets/image_coach.png"),
                                  width: 320,
                                ),
                                Padding(
                                  child: Text("Be your own coach!".i18n,
                                      style: Theme.of(context)
                                          .textTheme
                                          .display1
                                          .copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 24)),
                                  padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
                                ),
                                Text(
                                    "Design the workout that makes you feel the best"
                                        .i18n,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subhead
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onBackground
                                                .withAlpha(162))),
                                Spacer()
                              ],
                            )
                          : Column(children: [
                              header,
                              Container(
                                height: 32,
                              ),
                              Expanded(
                                  child: DragList<WorkoutExercise>(
                                items: _editableWorkout.workoutExercises,
                                itemExtent: 72.0,
                                builder: (context, item, handle) {
                                  return Row(children: [
                                    Padding(
                                      child: Image.asset(item.exercise.image),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                    ),
                                    Padding(
                                      child: Text(item.exercise.name),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                    ),
                                    Spacer(),
                                    handle,
                                  ]);
                                },
                              ))
                            ]));
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })),
      bottomNavigationBar: BottomAppBar(
          color: Color(0xffD9E9FF), //todo make theming-friendly
          child: Row(
            children: <Widget>[
              FlatButton.icon(
                  label: Text("Add exercises".i18n),
                  icon: Icon(Icons.add),
                  onPressed: () async {
                    // _saveTempState(); todo not needed
                    List<Exercise> exercises = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExercisePicker(),
                          fullscreenDialog: true,
                        ));
                    setState(() {
                      if (exercises != null) {
                        _editableWorkout.workoutExercises.addAll(
                            exercises.map((Exercise e) => WorkoutExercise(
                                exercise:
                                    e)) // todo make sure list works with zero exercise
                            );
                      }
                    });
                  }),
            ],
          ),
          shape: CircularNotchedRectangle()),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          tooltip: "Done".i18n,
          child: Icon(Icons.done),
          onPressed: () {
            _saveInputToWorkout();
            DBHelper.db.createOrModifyCustomWorkout(_editableWorkout).then((_) {
              Navigator.pop(context);
            });
          }),
    );
  }

  void _saveInputToWorkout() {
    _editableWorkout.title = _titleController.text;
  }

  Widget _buildHeader(TextEditingController titleController) {
    //todo split into separate widget
    var textStyle = TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w900,
        color: Theme.of(context).primaryColor);
    return SizedBox(
        height: 72,
        child: Stack(
          children: <Widget>[
            Positioned.directional(
                textDirection: TextDirection.ltr,
                start: 8,
                top: 0,
                bottom: 0,
                width: 24,
                child: CloseButton()),
            Positioned.directional(
                textDirection: TextDirection.ltr, //todo get this from context
                start: 56,
                end: 0,
                top: 16,
                bottom: 0,
                child: TextField(
                    style: textStyle,
                    controller: titleController,
                    decoration: InputDecoration(
                        hintStyle: textStyle.copyWith(
                            color:
                                Theme.of(context).primaryColor.withAlpha(64)),
                        // border: InputBorder.none,
                        filled: false,
                        hintText: 'Workout title'.i18n)))
          ],
        ));
  }
}
