// Copyright Miroslav Mazel et al.
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// As an additional permission under section 7, you are allowed to distribute
// the software through an app store, even if that store has restrictive terms
// and conditions that are incompatible with the AGPL, provided that the source
// is also available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// As a limitation under section 7, all unofficial builds and forks of the app
// must be clearly labeled as unofficial in the app's name (e.g. "Feeel
// UNOFFICIAL", never just "Feeel") or use a different name altogether.
// If any code changes are made, the fork should use a completely different name
// and app icon. All unofficial builds and forks MUST use a different
// application ID, in order to not conflict with a potential official release.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'package:feeel/components/body_container.dart';
import 'package:feeel/components/triangle_frame.dart';
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/models/editable_workout.dart';
import 'package:feeel/models/editable_workout_exercise.dart';
import 'package:feeel/providers/feeel_swatch_provider.dart';
import 'package:feeel/providers/workout_provider.dart';
import 'package:feeel/screens/exercise_picker/exercise_picker.dart';
import 'package:feeel/screens/workout_editor/components/editor_header.dart';
import 'package:feeel/screens/workout_editor/components/editor_subheader.dart';
import 'package:feeel/screens/workout_editor/components/empty_placeholder.dart';
import 'package:feeel/screens/workout_editor/components/workout_content_editor.dart';
import 'package:feeel/screens/workout_editor/components/workout_timing_editor.dart';
import 'package:feeel/theming/feeel_grid.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:feeel/utils/snackbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutEditorScreen extends ConsumerStatefulWidget {
  final EditableWorkout editableWorkout;

  const WorkoutEditorScreen({Key? key, required this.editableWorkout})
      : super(key: key);

  @override
  ConsumerState<WorkoutEditorScreen> createState() =>
      _WorkoutEditorScreenState();
}

class _WorkoutEditorScreenState extends ConsumerState<WorkoutEditorScreen> {
  final _titleController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _timingFormKey = GlobalKey<FormState>();
  bool _editingTimeMode = false;
  late FeeelSwatch _colorSwatch;

  @override
  void initState() {
    _colorSwatch = ref
        .read(feeelSwatchProvider)[widget.editableWorkout.category.feeelColor]!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    _titleController.text = widget.editableWorkout.title;
    final workoutNotifier = ref.read(workoutProvider.notifier);
    final systemOverlayStyle = Theme.of(context).appBarTheme.systemOverlayStyle;
    if (systemOverlayStyle != null) {
      SystemChrome.setSystemUIOverlayStyle(systemOverlayStyle);
    }

    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          body: BodyContainer(
              child: SafeArea(
                  bottom: false,
                  child: Form(
                      key: _formKey,
                      child: FormField<void>(
                        validator: (_) {
                          if (widget.editableWorkout.workoutExercises.isEmpty) {
                            return AppLocalizations.of(context)!
                                .txtWorkoutExercisesEmpty;
                          }
                          return null;
                        },
                        builder: (FormFieldState state) {
                          //TODO not sure if using formfield and its state correctly, should probably hold widget.editableWorkout.workoutExercises in state
                          return (widget
                                  .editableWorkout.workoutExercises.isEmpty)
                              ? EmptyPlaceholder(
                                  //TODO there's too much empty space in landscape view
                                  //TODO EditorHeader and EditorSubheader are used several times here; refactor to deduplicate code
                                  header: EditorHeader(
                                      onClose: _onClose,
                                      saveState: (String? text) {
                                        if (text != null) {
                                          widget.editableWorkout.title = text;
                                        }
                                      },
                                      colorSwatch: _colorSwatch,
                                      hintText: AppLocalizations.of(context)!
                                          .txtWorkoutTitle,
                                      emptyError: AppLocalizations.of(context)!
                                          .txtWorkoutTitleEmpty,
                                      textEditingController: _titleController),
                                  subheader: EditorSubheader(
                                      workoutDuration:
                                          widget.editableWorkout.getDuration(),
                                      category: widget.editableWorkout.category,
                                      onCategoryChanged: _onCategoryChanged),
                                  heading: AppLocalizations.of(context)!
                                      .txtBeYourOwnCoach,
                                  subheading: AppLocalizations.of(context)!
                                      .txtWorkoutToMakeYouFeelBest,
                                  errorMessage: state.errorText,
                                  child: TriangleFrame(
                                    seed: 52,
                                    color: _colorSwatch.getColor(FeeelShade
                                        .lightest
                                        .invertIfDark(theme.brightness)),
                                    child: Image.asset(
                                        ImageAsset.imageCoach.getPath()),
                                  ),
                                )
                              : _editingTimeMode
                                  ? WorkoutTimingEditor(
                                      exerciseDuration: widget
                                          .editableWorkout.exerciseDuration,
                                      breakDuration:
                                          widget.editableWorkout.breakDuration,
                                      onExerciseDurationChanged: (int value) {
                                        setState(() {
                                          widget.editableWorkout
                                              .exerciseDuration = value;
                                        });
                                      },
                                      onBreakDurationChanged: (int value) {
                                        setState(() {
                                          widget.editableWorkout.breakDuration =
                                              value;
                                        });
                                      },
                                      workoutExercises: widget
                                          .editableWorkout.workoutExercises,
                                      timingFormKey: _timingFormKey,
                                    )
                                  : WorkoutContentEditor(
                                      header: EditorHeader(
                                          onClose: _onClose,
                                          saveState: (String? text) {
                                            if (text != null) {
                                              widget.editableWorkout.title =
                                                  text;
                                            }
                                          },
                                          colorSwatch: _colorSwatch,
                                          hintText:
                                              AppLocalizations.of(context)!
                                                  .txtWorkoutTitle,
                                          emptyError:
                                              AppLocalizations.of(context)!
                                                  .txtWorkoutTitleEmpty,
                                          textEditingController:
                                              _titleController),
                                      subheader: EditorSubheader(
                                          workoutDuration: widget
                                              .editableWorkout
                                              .getDuration(),
                                          category:
                                              widget.editableWorkout.category,
                                          onCategoryChanged:
                                              _onCategoryChanged),
                                      workoutExercises: widget
                                          .editableWorkout.workoutExercises,
                                      onRemove: (int i) {
                                        setState(() {
                                          widget
                                              .editableWorkout.workoutExercises
                                              .removeAt(i);
                                        });
                                      },
                                      onReorder: (oldI, newI) {
                                        if (newI > oldI) newI--;

                                        setState(() {
                                          final temp = widget
                                              .editableWorkout.workoutExercises
                                              .removeAt(oldI);
                                          widget
                                              .editableWorkout.workoutExercises
                                              .insert(newI, temp);
                                        });
                                      },
                                    );
                        },
                      )))),
          bottomNavigationBar: Builder(
              builder: (context) => Visibility(
                  visible: !_editingTimeMode,
                  child: BottomAppBar(
                      color: _colorSwatch.getColor(
                          FeeelShade.lightest.invertIfDark(theme.brightness)),
                      shape: const CircularNotchedRectangle(),
                      child: Center(
                          child: ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: LayoutXL.cols12.width),
                              child: Row(
                                children: <Widget>[
                                  TextButton.icon(
                                      label: Text(
                                          AppLocalizations.of(context)!
                                              .btnAddExercise,
                                          style: TextStyle(
                                              color:
                                                  theme.colorScheme.onSurface)),
                                      icon: Icon(Icons.add,
                                          color: theme.colorScheme.onSurface),
                                      onPressed: _addExercisesOnPressed),
                                  //TODO if (widget.editableWorkout.workoutExercises.length > 0)
                                  TextButton.icon(
                                      label: Text(
                                          AppLocalizations.of(context)!
                                              .btnAdjustTiming,
                                          style: TextStyle(
                                              color:
                                                  theme.colorScheme.onSurface)),
                                      icon: Icon(Icons.timer,
                                          color: theme.colorScheme.onSurface),
                                      onPressed: () {
                                        _adjustTimingOnPressed(context);
                                      }),
                                ],
                              )))))),
          floatingActionButtonLocation: _editingTimeMode
              ? FloatingActionButtonLocation.centerFloat
              : FloatingActionButtonLocation.endDocked,
          floatingActionButton: _editingTimeMode
              ? FloatingActionButton.extended(
                  backgroundColor: _colorSwatch
                      .getColor(FeeelShade.dark.invertIfDark(theme.brightness)),
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
                  label:
                      Text(AppLocalizations.of(context)!.btnDoneEditingTiming))
              : FloatingActionButton(
                  backgroundColor: _colorSwatch
                      .getColor(FeeelShade.dark.invertIfDark(theme.brightness)),
                  foregroundColor: _colorSwatch.getForegroundColor(
                      FeeelShade.dark.invertIfDark(theme.brightness)),
                  tooltip: AppLocalizations.of(context)!.btnDone,
                  child: const Icon(Icons.done),
                  onPressed: () {
                    final form = _formKey.currentState;
                    if (form != null && form.validate()) {
                      form.save();
                      workoutNotifier
                          .createOrUpdateWorkout(widget.editableWorkout)
                          .then((_) {
                        Navigator.pop(context);
                      });
                    }
                  }),
        ));
  }

  Future<void> _addExercisesOnPressed() async {
    // _saveTempState(); // todo not needed
    List<int>? exerciseIds = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ExercisePickerScreen(swatch: _colorSwatch),
          fullscreenDialog: true,
        ));
    setState(() {
      if (exerciseIds != null) {
        widget.editableWorkout.workoutExercises.addAll(
            exerciseIds.map((int exerciseId) => EditableWorkoutExercise(
                exercise: exerciseId,
                key:
                    UniqueKey())) // TODO make sure list works with zero exercise
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
      SnackBarHelper.showInfoSnackBar(ScaffoldMessenger.of(context),
          AppLocalizations.of(context)!.txtAddExerciseFirst);
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
        _colorSwatch = ref.read(
            feeelSwatchProvider)[widget.editableWorkout.category.feeelColor]!;
      });
    }
  }

  void _onClose() {
    // TODO show only if edits were made
    showDialog<void>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text(AppLocalizations.of(context)!.txtDiscardChanges),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(AppLocalizations.of(context)!.btnCancel)),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Text(AppLocalizations.of(context)!.btnDiscard))
              ],
            ));
  }
}
