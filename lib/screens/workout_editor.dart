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
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/editor/editable_workout.dart';
import 'package:feeel/models/editor/editor_workout_exercise.dart';
import 'package:feeel/models/view/exercise.dart';
import 'package:feeel/models/view/workout_exercise.dart';
import 'package:feeel/models/view/workout_listed.dart';
import 'package:feeel/screens/exercise_picker.dart';
import 'package:feeel/theming/feeel_colors.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/widgets/empty_placeholder.dart';
import 'package:feeel/widgets/exercise_editor_row.dart';
import 'package:feeel/widgets/timing_header.dart';
import 'package:feeel/widgets/trailing_seconds_input.dart';
import 'package:feeel/widgets/triangle_frame.dart';

import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class WorkoutEditorScreen extends StatefulWidget {
  final WorkoutListed? workoutListed;

  const WorkoutEditorScreen({Key? key, this.workoutListed}) : super(key: key);

  @override
  _WorkoutEditorScreenState createState() {
    return _WorkoutEditorScreenState();
  }
}

class _WorkoutEditorScreenState extends State<WorkoutEditorScreen> {
  static const int _DEFAULT_COUNTDOWN_DURATION = 5;
  static const int _DEFAULT_EXERCISE_DURATION = 30;
  static const int _DEFAULT_BREAK_DURATION = 10;
  late final FeeelSwatch _colorSwatch;
  final _titleController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _timingFormKey = GlobalKey<FormState>();
  EditableWorkout? _editableWorkout;
  late Future<EditableWorkout> _future;
  bool _editingTimeMode = false;

  @override
  void initState() {
    _colorSwatch = widget.workoutListed?.category.colorSwatch ?? FeeelColors.blue;
    if (widget.workoutListed == null)
      _future = Future.value(_getDefaultEditableWorkout());
    else {
      _future = _queryEditableWorkout();
    }
    super.initState();
  }

  EditableWorkout _getDefaultEditableWorkout() {
    return EditableWorkout(
        type: WorkoutType.CUSTOM,
        workoutExercises: List<EditorWorkoutExercise>.empty(growable: true),
        countdownDuration: _DEFAULT_COUNTDOWN_DURATION,
        breakDuration: _DEFAULT_BREAK_DURATION,
        exerciseDuration: _DEFAULT_EXERCISE_DURATION,
        category: WorkoutCategory.STRENGTH);
  }

  Future<EditableWorkout> _queryEditableWorkout() async {
    final workout = await DBHelper.db
        .queryWorkout(widget.workoutListed!.dbId, widget.workoutListed!.type);
    if (workout != null)
      return EditableWorkout.fromWorkout(workout);
    else
      return _getDefaultEditableWorkout();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          body: SafeArea(
              bottom: false,
              child: FutureBuilder<EditableWorkout>(
                  future: _future,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      if (_editableWorkout == null) {
                        _editableWorkout = snapshot.data;
                        _titleController.text = _editableWorkout!.title;
                      }

                      var header = Row(children: <Widget>[
                        Container(
                          width: 4,
                        ),
                        CloseButton(onPressed: _onClose),
                        Expanded(
                          child: Padding(
                              child: TextFormField(
                                style: theme.appBarTheme.textTheme?.headline6
                                    ?.copyWith(
                                        color: FeeelColors.blue
                                            .getColorByBrightness(
                                                FeeelShade.DARK,
                                                theme.brightness)),
                                controller: _titleController,
                                decoration: InputDecoration(
                                    hintStyle: theme
                                        .appBarTheme.textTheme?.headline6
                                        ?.copyWith(
                                            color: FeeelColors.blue
                                                .getColorByBrightness(
                                                    FeeelShade.LIGHTER,
                                                    theme.brightness)),
                                    // border: InputBorder.none,
                                    filled: false,
                                    hintText: 'Workout title'.i18n),
                                validator: (String? input) {
                                  if (input == null || input.isEmpty) {
                                    return "Please specify a workout title"
                                        .i18n;
                                  }
                                  return null;
                                },
                                onSaved: (String? text) {
                                  if (text != null)
                                    _editableWorkout!.title = text;
                                },
                              ),
                              padding: EdgeInsets.only(left: 16, right: 16)),
                        ),
                      ]);

                      return Form(
                          key: _formKey,
                          child: FormField<void>(
                            validator: (_) {
                              if (_editableWorkout!.workoutExercises.isEmpty) {
                                return "Please add at least 1 exercise".i18n;
                              }
                              return null;
                            },
                            builder: (FormFieldState state) {
                              //todo not sure if using formfield and its state correctly, should probably hold _editableWorkout.workoutExercises in state
                              return (_editableWorkout!
                                      .workoutExercises.isEmpty)
                                  ? EmptyPlaceholder(
                                      header: header,
                                      heading: "Be your own coach!"
                                          .i18n,
                                      subheading:
                                          "Design the workout that makes you feel the best"
                                              .i18n,
                                      errorMessage: state.errorText,
                                      image: TriangleFrame(
                                        child: Image.asset(
                                            "assets/image_coach.png"),
                                        seed: 10,
                                        color: FeeelColors.blue
                                            .getColorByBrightness(
                                                FeeelShade.LIGHTEST,
                                                Theme.of(context).brightness),
                                      ),
                                    )
                                  : _editingTimeMode
                                      ? Form(
                                          key: _timingFormKey,
                                          child: Column(children: [
                                            TimingHeader(
                                              exerciseDuration:
                                                  _editableWorkout!
                                                      .exerciseDuration,
                                              onExerciseDurationChanged:
                                                  (int value) {
                                                setState(() {
                                                  _editableWorkout!
                                                      .exerciseDuration = value;
                                                });
                                              },
                                              breakDuration: _editableWorkout!
                                                  .breakDuration,
                                              onBreakDurationChanged:
                                                  (int value) {
                                                setState(() {
                                                  _editableWorkout!
                                                      .breakDuration = value;
                                                });
                                              },
                                            ),
                                            Container(
                                              height: 16,
                                            ),
                                            Expanded(
                                                child: ListView.builder(
                                              //todo add itemExtent here, but test for responsiveness
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                final workoutExercise =
                                                    _editableWorkout!
                                                        .workoutExercises[index]
                                                        .exercise;
                                                return ExerciseEditorRow(
                                                    workoutExercise:
                                                        workoutExercise,
                                                    trailing:
                                                        TrailingSecondsInput(
                                                            initialValue:
                                                                workoutExercise
                                                                    .duration,
                                                            defaultDuration:
                                                                _editableWorkout!
                                                                    .exerciseDuration,
                                                            onSaved: (String?
                                                                input) {
                                                              var secs =
                                                                  int.tryParse(
                                                                      input ??
                                                                          "");
                                                              workoutExercise
                                                                      .duration =
                                                                  secs;
                                                            }));
                                              },
                                              itemCount: _editableWorkout!
                                                  .workoutExercises.length,
                                            ))
                                          ]))
                                      : Column(children: [
                                          header,
                                          Container(
                                            height: 16,
                                          ),
                                          Expanded(
                                              child:
                                                  ReorderableListView.builder(
                                                      buildDefaultDragHandles:
                                                          false,
                                                      padding: EdgeInsets.only(
                                                          bottom: 32),
                                                      itemBuilder:
                                                          (context, i) {
                                                        final editableExercise =
                                                            _editableWorkout!
                                                                .workoutExercises[i];
                                                        return ExerciseEditorRow(
                                                            key:
                                                                editableExercise
                                                                    .key,
                                                            workoutExercise:
                                                                editableExercise
                                                                    .exercise,
                                                            trailing: Row(
                                                                children: [
                                                                  IconButton(
                                                                      icon: Icon(
                                                                          Icons
                                                                              .delete),
                                                                      tooltip:
                                                                          "Delete"
                                                                              .i18n,
                                                                      onPressed:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          _editableWorkout!
                                                                              .workoutExercises
                                                                              .removeAt(i);
                                                                        });
                                                                      }),
                                                                  ReorderableDragStartListener(
                                                                    index: i,
                                                                    child: const Icon(
                                                                        Icons
                                                                            .drag_handle),
                                                                  )
                                                                ]));
                                                      },
                                                      itemCount:
                                                          _editableWorkout!
                                                              .workoutExercises
                                                              .length,
                                                      onReorder: (oldI, newI) {
                                                        if (newI > oldI) newI--;

                                                        setState(() {
                                                          final temp =
                                                              _editableWorkout!
                                                                  .workoutExercises
                                                                  .removeAt(
                                                                      oldI);
                                                          _editableWorkout!
                                                              .workoutExercises
                                                              .insert(
                                                                  newI, temp);
                                                        });
                                                      }))
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
                  color: FeeelColors.blue
                      .getColorByBrightness(FeeelShade.DARK, theme.brightness),
                  child: TextButton.icon(
                    label: Text("Done editing timing".i18n,
                        style: TextStyle(
                            //todo use button style in the future (in other buttons too)
                            color: theme.colorScheme.onPrimary)),
                    icon: Icon(
                      Icons.done,
                      color: theme.colorScheme.onPrimary,
                    ), //todo color into separate variable
                    onPressed: () {
                      setState(() {
                        final timingForm = _timingFormKey.currentState;
                        if ((_editableWorkout != null
                                ? _editableWorkout!.workoutExercises.length > 0
                                : false) &&
                            timingForm != null &&
                            timingForm.validate()) {
                          timingForm.save();
                          _editingTimeMode = false;
                        }
                      });
                    },
                  ))
              : Builder(
                  builder: (context) => BottomAppBar(
                      color: FeeelColors.blue.getColorByBrightness(
                          FeeelShade.LIGHTEST, theme.brightness),
                      child: Row(
                        children: <Widget>[
                          TextButton.icon(
                              label: Text("Add exercises".i18n,
                                  style: TextStyle(
                                      color: theme.colorScheme.onSurface)),
                              icon: Icon(Icons.add,
                                  color: theme.colorScheme.onSurface),
                              onPressed: _addExercisesOnPressed),
                          //todo if (_editableWorkout.workoutExercises.length > 0)
                          TextButton.icon(
                              label: Text("Adjust timing".i18n,
                                  style: TextStyle(
                                      color: theme.colorScheme.onSurface)),
                              icon: Icon(Icons.timer,
                                  color: theme.colorScheme.onSurface),
                              onPressed: () {
                                _adjustTimingOnPressed(context);
                              }),
                        ],
                      ),
                      shape: CircularNotchedRectangle())),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: _editingTimeMode
              ? null
              : FloatingActionButton(
                  backgroundColor: FeeelColors.blue
                      .getColorByBrightness(FeeelShade.DARK, theme.brightness),
                  tooltip: "Done".i18n,
                  child: Icon(Icons.done),
                  onPressed: () {
                    final form = _formKey.currentState;
                    if (form != null &&
                        form.validate() &&
                        _editableWorkout != null) {
                      form.save();
                      DBHelper.db
                          .createOrUpdateCustomWorkout(
                              _editableWorkout!.toWorkout())
                          .then((_) {
                        Navigator.pop(context);
                      });
                    }
                  }),
        ));
  }

  Future<void> _addExercisesOnPressed() async {
    // _saveTempState(); todo not needed
    List<Exercise>? exercises = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ExercisePickerScreen(),
          fullscreenDialog: true,
        ));
    setState(() {
      if (exercises != null) {
        _editableWorkout?.workoutExercises.addAll(
            exercises.map((Exercise e) => EditorWorkoutExercise(
                WorkoutExercise(exercise: e),
                UniqueKey())) // todo make sure list works with zero exercise
            );
      }
    });
  }

  void _adjustTimingOnPressed(BuildContext context) {
    if (_editableWorkout != null &&
        _editableWorkout!.workoutExercises.length > 0) {
      setState(() {
        _editingTimeMode = true;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Add an exercise first".i18n),
        duration: Duration(seconds: 2),
      ));
    }
  }

  Future<bool> _onWillPop() async {
    _onClose();
    return false;
  }

  void _onClose() {
    // todo show only if edits were made
    showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text("Discard changes?".i18n),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel".i18n)),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Text("Discard".i18n))
              ],
            ));
  }
}
