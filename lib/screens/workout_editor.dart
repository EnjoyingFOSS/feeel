// Copyright (C) 2020 Miroslav Mazel
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

import 'package:drag_list/drag_list.dart';
import 'package:feeel/db/db_helper.dart';
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/exercise.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/screens/exercise_picker.dart';
import 'package:feeel/widgets/exercise_drag_row.dart';

import '../models/workout.dart';

import '../models/workout_listed.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class WorkoutEditorScreen extends StatefulWidget {
  final WorkoutListed workoutListed;

  const WorkoutEditorScreen({Key key, this.workoutListed}) : super(key: key);

  @override
  _WorkoutEditorScreenState createState() {
    return _WorkoutEditorScreenState();
  }
}

class _WorkoutEditorScreenState extends State<WorkoutEditorScreen> {
  static const int _DEFAULT_COUNTDOWN_DURATION = 5;
  static const int _DEFAULT_EXERCISE_DURATION = 30;
  static const int _DEFAULT_BREAK_DURATION = 10;
  final _titleController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Workout _editableWorkout;
  Future _future;
  bool _editingTime = false;

  @override
  void initState() {
    _future = (widget.workoutListed == null)
        ? Future.value(Workout(
            type: WorkoutType.CUSTOM,
            workoutExercises: List<WorkoutExercise>(),
            countdownDuration: _DEFAULT_COUNTDOWN_DURATION,
            breakDuration: _DEFAULT_BREAK_DURATION,
            exerciseDuration: _DEFAULT_EXERCISE_DURATION,
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
                          child: TextFormField(
                            style: textStyle,
                            controller: _titleController,
                            decoration: InputDecoration(
                                hintStyle: textStyle.copyWith(
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withAlpha(64)),
                                // border: InputBorder.none,
                                filled: false,
                                hintText: 'Workout title'.i18n),
                            validator: (String text) {
                              if (text.isEmpty) {
                                return "Please specify a workout title".i18n;
                              }
                              return null;
                            },
                            onSaved: (String text) {
                              _editableWorkout.title = text;
                            },
                          ),
                          padding: EdgeInsets.only(left: 16, right: 16)),
                    ),
                  ]);

                  return Form(
                      key: _formKey,
                      child: FormField(
                        validator: (_) {
                          if (_editableWorkout.workoutExercises.isEmpty) {
                            return "Please add at least 1 exercise".i18n;
                          }
                          return null;
                        },
                        builder: (FormFieldState state) {
                          //todo not sure if using formfield and its state correctly, should probably hold _editableWorkout.workoutExercises in state
                          return (_editableWorkout.workoutExercises.isEmpty)
                              ? Column(
                                  // todo singleChildScrollView, perhaps through the use of Centered or Flexible inside Column
                                  children: <Widget>[
                                    header,
                                    Spacer(), //todo is this the right way to center column content?
                                    SizedBox(
                                      child:
                                          Image.asset("assets/image_coach.png"),
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
                                    Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        child: Text(
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
                                                        .withAlpha(162)))),
                                    if (state.hasError)
                                      Padding(
                                          child: Text(state.errorText,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption
                                                  .copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .error)),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 16, horizontal: 8)),
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
                                    padding: EdgeInsets.only(bottom: 32),
                                    items: _editableWorkout.workoutExercises,
                                    itemExtent: 72.0,
                                    builder: (context, item, handle) {
                                      return ExerciseDragRow(
                                        workoutExercise: item,
                                        handle: handle,
                                        onDelete: () {
                                          setState(() {
                                            _editableWorkout.workoutExercises
                                                .remove(item);
                                          });
                                        },
                                      );
                                    },
                                  ))
                                ]);
                        },
                      ));
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
                          builder: (context) => ExercisePickerScreen(),
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
            final form = _formKey.currentState;
            if (form.validate()) {
              form.save();
              DBHelper.db
                  .createOrUpdateCustomWorkout(_editableWorkout)
                  .then((_) {
                Navigator.pop(context);
              });
            }
          }),
    );
  }
}
