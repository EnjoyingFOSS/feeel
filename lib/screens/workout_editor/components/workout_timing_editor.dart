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
import 'package:feeel/screens/workout_editor/components/timing_header.dart';
import 'package:feeel/screens/workout_editor/components/trailing_seconds_input.dart';
import 'package:flutter/material.dart';

class WorkoutTimingEditor extends StatelessWidget {
  final int exerciseDuration;
  final int breakDuration;
  final Key timingFormKey;
  final List<EditableWorkoutExercise> workoutExercises;
  final Function(int value) onExerciseDurationChanged;
  final Function(int value) onBreakDurationChanged;

  const WorkoutTimingEditor(
      {Key? key,
      required this.exerciseDuration,
      required this.breakDuration,
      required this.timingFormKey,
      required this.workoutExercises,
      required this.onExerciseDurationChanged,
      required this.onBreakDurationChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: timingFormKey,
        child: Column(children: [
          TimingHeader(
            exerciseDuration: exerciseDuration,
            onExerciseDurationChanged: onExerciseDurationChanged,
            breakDuration: breakDuration,
            onBreakDurationChanged: onBreakDurationChanged,
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
              child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 72),
            //TODO add itemExtent here, but test for responsiveness
            itemBuilder: (BuildContext context, int index) {
              final workoutExercise = workoutExercises[index];
              return ExerciseEditorRow(
                  editableWorkoutExercise: workoutExercise,
                  trailing: TrailingSecondsInput(
                      initialValue: workoutExercise.exerciseDuration,
                      defaultDuration: exerciseDuration,
                      onSaved: (String? input) {
                        final secs = int.tryParse(input ?? "");
                        workoutExercise.exerciseDuration = secs;
                      }));
            },
            itemCount: workoutExercises.length,
          ))
        ]));
  }
}
