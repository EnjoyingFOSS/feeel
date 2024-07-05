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

import 'package:feeel/models/editable_workout_exercise.dart';
import 'package:feeel/screens/workout_editor/components/exercise_editor_row.dart';
import 'package:feeel/utils/snackbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WorkoutContentEditor extends StatelessWidget {
  final Widget header;
  final Widget subheader;
  final List<EditableWorkoutExercise> workoutExercises;
  final Function(int) onRemove;
  final Function(int, int) onReorder;

  const WorkoutContentEditor(
      {Key? key,
      required this.header,
      required this.subheader,
      required this.workoutExercises,
      required this.onRemove,
      required this.onReorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      header,
      subheader,
      const SizedBox(
        height: 16,
      ),
      Expanded(
          child: ReorderableListView.builder(
              //TODO somehow, this seems to no longer work on Android; could it be the onPressed aspect of the drag handle?
              buildDefaultDragHandles: false,
              padding: const EdgeInsets.only(bottom: 32),
              itemBuilder: (context, i) {
                final editableWorkoutExercise = workoutExercises[i];
                return ExerciseEditorRow(
                    key: editableWorkoutExercise.key,
                    editableWorkoutExercise: editableWorkoutExercise,
                    trailing: Row(children: [
                      IconButton(
                          icon: const Icon(Icons.delete),
                          tooltip: AppLocalizations.of(context)!.btnDelete,
                          onPressed: () {
                            onRemove(i);
                          }),
                      ReorderableDragStartListener(
                        index: i,
                        child: IconButton(
                            onPressed: () {
                              SnackBarHelper.showInfoSnackBar(
                                  ScaffoldMessenger.of(context),
                                  AppLocalizations.of(context)!
                                      .txtDragToReorder);
                              //TODO test this, shouldn't show up on drag
                            },
                            icon: const Icon(Icons.drag_handle)),
                      )
                    ]));
              },
              itemCount: workoutExercises.length,
              onReorder: onReorder))
    ]);
  }
}
