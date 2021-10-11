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
import 'package:feeel/widgets/editor_header.dart';
import 'package:feeel/widgets/editor_subheader.dart';
import 'package:feeel/widgets/empty_placeholder.dart';
import 'package:feeel/widgets/triangle_frame.dart';
import 'package:feeel/widgets/workout_content_editor.dart';
import 'package:feeel/widgets/workout_timing_editor.dart';

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
  late FeeelSwatch _colorSwatch;
  final _titleController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _timingFormKey = GlobalKey<FormState>();
  EditableWorkout? _editableWorkout;
  late Future<EditableWorkout> _future;
  bool _editingTimeMode = false;

  @override
  void initState() {
    _colorSwatch =
        widget.workoutListed?.category.colorSwatch ?? FeeelColors.blue;
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
                                  ? CustomScrollView(slivers: [
                                      SliverFillRemaining(
                                          hasScrollBody: false,
                                          child: EmptyPlaceholder(
                                            //todo there's too much empty space in landscape view
                                            //todo EditorHeader and EditorSubheader are used several times here; refactor to deduplicate code
                                            header: EditorHeader(
                                                onClose: _onClose,
                                                onSaved: (String? text) {
                                                  if (text != null)
                                                    _editableWorkout!.title =
                                                        text;
                                                },
                                                colorSwatch: _colorSwatch,
                                                hintText: 'Workout title'.i18n,
                                                emptyError:
                                                    "Please specify a workout title"
                                                        .i18n,
                                                textEditingController:
                                                    _titleController),
                                            subheader: EditorSubheader(
                                                workoutDuration:
                                                    _editableWorkout!
                                                        .getDuration(),
                                                category:
                                                    _editableWorkout!.category,
                                                onCategoryChanged:
                                                    _onCategoryChanged),
                                            heading: "Be your own coach!".i18n,
                                            subheading:
                                                "Design the workout that makes you feel the best"
                                                    .i18n,
                                            errorMessage: state.errorText,
                                            child: TriangleFrame(
                                              child: Image.asset(
                                                  "assets/image_coach.webp"),
                                              seed: 52,
                                              color: _colorSwatch
                                                  .getColorByBrightness(
                                                      FeeelShade.LIGHTEST,
                                                      Theme.of(context)
                                                          .brightness),
                                            ),
                                          ))
                                    ])
                                  : _editingTimeMode
                                      ? WorkoutTimingEditor(
                                          exerciseDuration: _editableWorkout!
                                              .exerciseDuration,
                                          breakDuration:
                                              _editableWorkout!.breakDuration,
                                          onExerciseDurationChanged:
                                              (int value) {
                                            setState(() {
                                              _editableWorkout!
                                                  .exerciseDuration = value;
                                            });
                                          },
                                          onBreakDurationChanged: (int value) {
                                            setState(() {
                                              _editableWorkout!.breakDuration =
                                                  value;
                                            });
                                          },
                                          workoutExercises: _editableWorkout!
                                              .workoutExercises,
                                          timingFormKey: _timingFormKey,
                                        )
                                      : WorkoutContentEditor(
                                          header: EditorHeader(
                                              onClose: _onClose,
                                              onSaved: (String? text) {
                                                if (text != null)
                                                  _editableWorkout!.title =
                                                      text;
                                              },
                                              colorSwatch: _colorSwatch,
                                              hintText: 'Workout title'.i18n,
                                              emptyError:
                                                  "Please specify a workout title"
                                                      .i18n,
                                              textEditingController:
                                                  _titleController),
                                          subheader: EditorSubheader(
                                              workoutDuration: _editableWorkout!
                                                  .getDuration(),
                                              category:
                                                  _editableWorkout!.category,
                                              onCategoryChanged:
                                                  _onCategoryChanged),
                                          workoutExercises: _editableWorkout!
                                              .workoutExercises,
                                          onRemove: (int i) {
                                            setState(() {
                                              _editableWorkout!.workoutExercises
                                                  .removeAt(i);
                                            });
                                          },
                                          onReorder: (oldI, newI) {
                                            if (newI > oldI) newI--;

                                            setState(() {
                                              final temp = _editableWorkout!
                                                  .workoutExercises
                                                  .removeAt(oldI);
                                              _editableWorkout!.workoutExercises
                                                  .insert(newI, temp);
                                            });
                                          },
                                        );
                            },
                          ));
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  })),
          bottomNavigationBar: Builder(
              builder: (context) => Visibility(
                  child: BottomAppBar(
                      color: _colorSwatch.getColorByBrightness(
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
                      shape: CircularNotchedRectangle()),
                  visible: !_editingTimeMode)),
          floatingActionButtonLocation: _editingTimeMode
              ? FloatingActionButtonLocation.centerFloat
              : FloatingActionButtonLocation.endDocked,
          floatingActionButton: _editingTimeMode
              ? FloatingActionButton.extended(
                  backgroundColor: _colorSwatch.getColorByBrightness(
                      FeeelShade.DARK, theme.brightness),
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
                  icon: Icon(Icons.done),
                  label: Text("Done editing timing".i18n))
              : FloatingActionButton(
                  backgroundColor: _colorSwatch.getColorByBrightness(
                      FeeelShade.DARK, theme.brightness),
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
          builder: (context) => ExercisePickerScreen(swatch: _colorSwatch),
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

  void _onCategoryChanged(WorkoutCategory? category) {
    if (category != null) {
      setState(() {
        _editableWorkout!.category = category;
        _colorSwatch = _editableWorkout!.category.colorSwatch;
      });
    }
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
