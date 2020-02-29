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
import 'package:feeel/widgets/duration_dropdown.dart';
import 'package:feeel/widgets/empty_placeholder.dart';
import 'package:feeel/widgets/exercise_editor_row.dart';

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
  final _timingFormKey = GlobalKey<FormState>();
  Workout _editableWorkout;
  Future _future;
  bool _editingTimeMode = false;

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
                            validator: (String input) {
                              if (input.isEmpty) {
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
                              ? EmptyPlaceholder(
                                  header: header,
                                  heading: "Be your own coach!".i18n,
                                  subheading:
                                      "Design the workout that makes you feel the best"
                                          .i18n,
                                  errorMessage: state.errorText,
                                  image: Image.asset("assets/image_coach.png"),
                                )
                              : _editingTimeMode
                                  ? Form(
                                      key: _timingFormKey,
                                      child: Column(children: [
                                        Padding(
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                    child: DurationDropdown(
                                                  chosenValue: _editableWorkout
                                                      .exerciseDuration,
                                                  predefinedValues: [
                                                    15,
                                                    30,
                                                    60
                                                  ],
                                                  decoration: InputDecoration(
                                                      //todo i18n annotation
                                                      labelText:
                                                          "Exercise duration"
                                                              .i18n,
                                                      filled: true),
                                                  onChanged: (int value) {
                                                    setState(() {
                                                      _editableWorkout
                                                              .exerciseDuration =
                                                          value;
                                                    });
                                                  },
                                                )),
                                                Container(
                                                  width: 16,
                                                ),
                                                Expanded(
                                                    child: DurationDropdown(
                                                  chosenValue: _editableWorkout
                                                      .breakDuration,
                                                  predefinedValues: [5, 10, 15],
                                                  decoration: InputDecoration(
                                                      //todo ellipsize
                                                      //todo i18n annotation
                                                      labelText:
                                                          "Break duration".i18n,
                                                      filled: true),
                                                  onChanged: (int value) {
                                                    setState(() {
                                                      _editableWorkout
                                                              .breakDuration =
                                                          value;
                                                    });
                                                  },
                                                ))
                                              ],
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16)),
                                        Container(
                                          height: 16,
                                        ),
                                        Expanded(
                                            child: ListView.builder(
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            final workoutExercise =
                                                _editableWorkout
                                                    .workoutExercises[index];
                                            final initialValue =
                                                workoutExercise?.duration;
                                            return ExerciseEditorRow(
                                                workoutExercise:
                                                    workoutExercise,
                                                trailing: Container(
                                                    width: 68,
                                                    child: Row(children: [
                                                      Expanded(
                                                          child: TextFormField(
                                                        textAlign:
                                                            TextAlign.end,
                                                        initialValue: initialValue
                                                                ?.toString() ??
                                                            "",
                                                        decoration:
                                                            InputDecoration(
                                                                hintStyle: TextStyle(
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic),
                                                                hintText: initialValue !=
                                                                        null
                                                                    ? ""
                                                                    : _editableWorkout
                                                                        .exerciseDuration
                                                                        .toString(),
                                                                //todo i18n annotation
                                                                filled: true),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        validator:
                                                            (String input) {
                                                          if (input == "")
                                                            return null;
                                                          var secs =
                                                              int.tryParse(
                                                                  input);
                                                          if (secs == null) {
                                                            //todo upper bound?
                                                            print("NUMBER");
                                                            return "Non-numeric"
                                                                .i18n;
                                                          }
                                                          if (secs < 1) {
                                                            print("POSITIVE");
                                                            return "Nonpositive"
                                                                .i18n;
                                                          }
                                                          return null;
                                                        },
                                                        onSaved:
                                                            (String input) {
                                                          var secs =
                                                              int.tryParse(
                                                                  input);
                                                          workoutExercise
                                                              .duration = secs;
                                                        },
                                                      )),
                                                      Text(" s")
                                                    ])));
                                          },
                                          itemCount: _editableWorkout
                                              .workoutExercises.length,
                                        ))
                                      ]))
                                  : Column(children: [
                                      header,
                                      Container(
                                        height: 32,
                                      ),
                                      Expanded(
                                          child: DragList<WorkoutExercise>(
                                        padding: EdgeInsets.only(bottom: 32),
                                        items:
                                            _editableWorkout.workoutExercises,
                                        itemExtent: 72.0,
                                        itemBuilder: (context, item, handle) {
                                          return ExerciseEditorRow(
                                              workoutExercise: item,
                                              handle: handle,
                                              trailing: IconButton(
                                                icon: Icon(Icons.delete),
                                                tooltip: "Delete".i18n,
                                                onPressed: () {
                                                  setState(() {
                                                    _editableWorkout
                                                        .workoutExercises
                                                        .remove(item);
                                                  });
                                                },
                                              ));
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
      bottomNavigationBar: _editingTimeMode
          ? BottomAppBar(
              color: Theme.of(context).primaryColor,
              child: FlatButton.icon(
                label: Text("Done editing timing".i18n,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary)),
                icon: Icon(
                  Icons.done,
                  color: Theme.of(context).colorScheme.onPrimary,
                ), //todo color into separate variable
                onPressed: () {
                  setState(() {
                    final timingForm = _timingFormKey.currentState;
                    if (_editableWorkout.workoutExercises.length > 0 &&
                        timingForm.validate()) {
                      timingForm.save();
                      print("Saving");
                      _editingTimeMode = false;
                    }
                  });
                },
              ))
          : BottomAppBar(
              color: Color(0xffD9E9FF), //todo make theming-friendly
              child: Row(
                children: <Widget>[
                  FlatButton.icon(
                      label: Text("Add exercises".i18n),
                      icon: Icon(Icons.add),
                      onPressed: _addExercisesOnPressed),
                  //todo if (_editableWorkout.workoutExercises.length > 0)
                  FlatButton.icon(
                      label: Text("Adjust timing".i18n),
                      icon: Icon(Icons.timer),
                      onPressed: _adjustTimingOnPressed),
                ],
              ),
              shape: CircularNotchedRectangle()),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: _editingTimeMode
          ? null
          : FloatingActionButton(
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

  Future<void> _addExercisesOnPressed() async {
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
                exercise: e)) // todo make sure list works with zero exercise
            );
      }
    });
  }

  void _adjustTimingOnPressed() {
    setState(() {
      _editingTimeMode = true;
    });
  }
}
