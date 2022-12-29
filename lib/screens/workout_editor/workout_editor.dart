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

import 'package:feeel/db/database.dart';
import 'package:feeel/models/editable_workout.dart';
import 'package:feeel/models/editable_workout_exercise.dart';
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/screens/exercise_picker/exercise_picker.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/screens/workout_editor/components/editor_header.dart';
import 'package:feeel/screens/workout_editor/components/editor_subheader.dart';
import 'package:feeel/screens/workout_editor/components/empty_placeholder.dart';
import 'package:feeel/components/triangle_frame.dart';
import 'package:feeel/screens/workout_editor/components/workout_content_editor.dart';
import 'package:feeel/screens/workout_editor/components/workout_timing_editor.dart';

import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:provider/provider.dart';

class WorkoutEditorScreen extends StatefulWidget {
  final EditableWorkout editableWorkout;

  const WorkoutEditorScreen({Key? key, required this.editableWorkout})
      : super(key: key);

  @override
  State<WorkoutEditorScreen> createState() => _WorkoutEditorScreenState();
}

class _WorkoutEditorScreenState extends State<WorkoutEditorScreen> {
  late FeeelSwatch _colorSwatch;
  final _titleController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _timingFormKey = GlobalKey<FormState>();
  bool _editingTimeMode = false;

  @override
  void initState() {
    _colorSwatch = widget.editableWorkout.category.colorSwatch;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    _titleController.text = widget.editableWorkout.title;
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          body: SafeArea(
              bottom: false,
              child: Form(
                  key: _formKey,
                  child: FormField<void>(
                    validator: (_) {
                      if (widget.editableWorkout.workoutExercises.isEmpty) {
                        return "Please add at least 1 exercise".i18n;
                      }
                      return null;
                    },
                    builder: (FormFieldState state) {
                      //todo not sure if using formfield and its state correctly, should probably hold widget.editableWorkout.workoutExercises in state
                      return (widget.editableWorkout.workoutExercises.isEmpty)
                          ? EmptyPlaceholder(
                              //todo there's too much empty space in landscape view
                              //todo EditorHeader and EditorSubheader are used several times here; refactor to deduplicate code
                              header: EditorHeader(
                                  onClose: _onClose,
                                  saveState: (String? text) {
                                    if (text != null) {
                                      widget.editableWorkout.title = text;
                                    }
                                  },
                                  colorSwatch: _colorSwatch,
                                  hintText: 'Workout title'.i18n,
                                  emptyError:
                                      "Please specify a workout title".i18n,
                                  textEditingController: _titleController),
                              subheader: EditorSubheader(
                                  workoutDuration:
                                      widget.editableWorkout.getDuration(),
                                  category: widget.editableWorkout.category,
                                  onCategoryChanged: _onCategoryChanged),
                              heading: "Be your own coach!".i18n,
                              subheading:
                                  "Design the workout that makes you feel the best"
                                      .i18n,
                              errorMessage: state.errorText,
                              child: TriangleFrame(
                                seed: 52,
                                color: _colorSwatch.getColorByBrightness(
                                    FeeelShade.lightest,
                                    Theme.of(context).brightness),
                                child: Image.asset("assets/image_coach.webp"),
                              ),
                            )
                          : _editingTimeMode
                              ? WorkoutTimingEditor(
                                  exerciseDuration:
                                      widget.editableWorkout.exerciseDuration,
                                  breakDuration:
                                      widget.editableWorkout.breakDuration,
                                  onExerciseDurationChanged: (int value) {
                                    setState(() {
                                      widget.editableWorkout.exerciseDuration =
                                          value;
                                    });
                                  },
                                  onBreakDurationChanged: (int value) {
                                    setState(() {
                                      widget.editableWorkout.breakDuration =
                                          value;
                                    });
                                  },
                                  workoutExercises:
                                      widget.editableWorkout.workoutExercises,
                                  timingFormKey: _timingFormKey,
                                )
                              : WorkoutContentEditor(
                                  header: EditorHeader(
                                      onClose: _onClose,
                                      saveState: (String? text) {
                                        if (text != null) {
                                          widget.editableWorkout.title = text;
                                        }
                                      },
                                      colorSwatch: _colorSwatch,
                                      hintText: 'Workout title'.i18n,
                                      emptyError:
                                          "Please specify a workout title".i18n,
                                      textEditingController: _titleController),
                                  subheader: EditorSubheader(
                                      workoutDuration:
                                          widget.editableWorkout.getDuration(),
                                      category: widget.editableWorkout.category,
                                      onCategoryChanged: _onCategoryChanged),
                                  workoutExercises:
                                      widget.editableWorkout.workoutExercises,
                                  onRemove: (int i) {
                                    setState(() {
                                      widget.editableWorkout.workoutExercises
                                          .removeAt(i);
                                    });
                                  },
                                  onReorder: (oldI, newI) {
                                    if (newI > oldI) newI--;

                                    setState(() {
                                      final temp = widget
                                          .editableWorkout.workoutExercises
                                          .removeAt(oldI);
                                      widget.editableWorkout.workoutExercises
                                          .insert(newI, temp);
                                    });
                                  },
                                );
                    },
                  ))),
          bottomNavigationBar: Builder(
              builder: (context) => Visibility(
                  visible: !_editingTimeMode,
                  child: BottomAppBar(
                      color: _colorSwatch.getColorByBrightness(
                          FeeelShade.lightest, theme.brightness),
                      shape: const CircularNotchedRectangle(),
                      child: Row(
                        children: <Widget>[
                          TextButton.icon(
                              label: Text("Add exercises".i18n,
                                  style: TextStyle(
                                      color: theme.colorScheme.onSurface)),
                              icon: Icon(Icons.add,
                                  color: theme.colorScheme.onSurface),
                              onPressed: _addExercisesOnPressed),
                          //todo if (widget.editableWorkout.workoutExercises.length > 0)
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
                      )))),
          floatingActionButtonLocation: _editingTimeMode
              ? FloatingActionButtonLocation.centerFloat
              : FloatingActionButtonLocation.endDocked,
          floatingActionButton: _editingTimeMode
              ? FloatingActionButton.extended(
                  backgroundColor: _colorSwatch.getColorByBrightness(
                      FeeelShade.dark, theme.brightness),
                  onPressed: () {
                    setState(() {
                      final timingForm = _timingFormKey.currentState;
                      if (widget.editableWorkout.workoutExercises.isNotEmpty &&
                          timingForm != null &&
                          timingForm.validate()) {
                        timingForm.save();
                        _editingTimeMode = false;
                      }
                    });
                  },
                  icon: const Icon(Icons.done),
                  label: Text("Done editing timing".i18n))
              : FloatingActionButton(
                  backgroundColor: _colorSwatch.getColorByBrightness(
                      FeeelShade.dark, theme.brightness),
                  tooltip: "Done".i18n,
                  child: const Icon(Icons.done),
                  onPressed: () {
                    final form = _formKey.currentState;
                    if (form != null && form.validate()) {
                      form.save();
                      Provider.of<FeeelDB>(context, listen: false)
                          .createOrUpdateWorkout(widget.editableWorkout)
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
        widget.editableWorkout.workoutExercises.addAll(
            exercises.map((Exercise e) => EditableWorkoutExercise(
                exercise: e.wgerId,
                key:
                    UniqueKey())) // todo make sure list works with zero exercise
            );
      }
    });
  }

  void _adjustTimingOnPressed(BuildContext context) {
    if (widget.editableWorkout.workoutExercises.isNotEmpty) {
      setState(() {
        _editingTimeMode = true;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Add an exercise first".i18n),
        duration: const Duration(seconds: 2),
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
        widget.editableWorkout.category = category;
        _colorSwatch = widget.editableWorkout.category.colorSwatch;
      });
    }
  }

  void _onClose() {
    // todo show only if edits were made
    showDialog<void>(
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
