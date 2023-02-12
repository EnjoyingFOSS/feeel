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

import 'package:feeel/db/bundled_exercises.dart';
import 'package:feeel/models/editable_workout.dart';
import 'package:feeel/models/editable_workout_exercise.dart';
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/enums/workout_type.dart';

class BundledWorkouts {
  static const _defaultCountdownDuration = 5;
  static const _defaultBreakDuration = 5;

  static final bundledEditableWorkouts = [
    EditableWorkout(
        dbId: null,
        type: WorkoutType.bundled,
        title: "Scientific 7 minute workout",
        category: WorkoutCategory.strength,
        countdownDuration: _defaultCountdownDuration,
        breakDuration: _defaultBreakDuration,
        exerciseDuration: 30,
        initialWorkoutExercises: [
          EditableWorkoutExercise(exercise: BundledExercises.jumpingJacks),
          EditableWorkoutExercise(exercise: BundledExercises.wallSit),
          EditableWorkoutExercise(exercise: BundledExercises.pushUps),
          EditableWorkoutExercise(exercise: BundledExercises.abCrunches),
          EditableWorkoutExercise(exercise: BundledExercises.stepUps),
          EditableWorkoutExercise(exercise: BundledExercises.squats),
          EditableWorkoutExercise(exercise: BundledExercises.chairDips),
          EditableWorkoutExercise(exercise: BundledExercises.forearmPlank),
          EditableWorkoutExercise(exercise: BundledExercises.highKnees),
          EditableWorkoutExercise(exercise: BundledExercises.lunges),
          EditableWorkoutExercise(exercise: BundledExercises.pushUpRotations),
          EditableWorkoutExercise(
              exercise: BundledExercises.sidePlankL, exerciseDuration: 15),
          EditableWorkoutExercise(
              exercise: BundledExercises.sidePlankR,
              breakDuration: 5,
              exerciseDuration: 15)
        ]),
    EditableWorkout(
        dbId: null,
        type: WorkoutType.bundled,
        title: "Leg workout",
        category: WorkoutCategory.strength,
        countdownDuration: _defaultCountdownDuration,
        breakDuration: _defaultBreakDuration,
        exerciseDuration: 30,
        initialWorkoutExercises: [
          EditableWorkoutExercise(exercise: BundledExercises.splitSquatsL),
          EditableWorkoutExercise(exercise: BundledExercises.splitSquatsR),
          EditableWorkoutExercise(exercise: BundledExercises.sideSplitSquatsL),
          EditableWorkoutExercise(exercise: BundledExercises.sideSplitSquatsR),
          EditableWorkoutExercise(
              exercise: BundledExercises.bulgarianSplitSquatsL),
          EditableWorkoutExercise(
              exercise: BundledExercises.bulgarianSplitSquatsR),
          EditableWorkoutExercise(exercise: BundledExercises.squats),
          EditableWorkoutExercise(exercise: BundledExercises.kneelingKickbacks),
          EditableWorkoutExercise(exercise: BundledExercises.calfRaisesL),
          EditableWorkoutExercise(exercise: BundledExercises.calfRaisesR)
        ]),
    EditableWorkout(
        dbId: null,
        type: WorkoutType.bundled,
        title: "Neck and shoulder stretches",
        category: WorkoutCategory.stretching,
        countdownDuration: _defaultCountdownDuration,
        breakDuration: _defaultBreakDuration,
        exerciseDuration: 20,
        initialWorkoutExercises: [
          EditableWorkoutExercise(exercise: BundledExercises.chinTuck),
          EditableWorkoutExercise(
              exercise:
                  BundledExercises.headTurns), //should be to from end, actually
          EditableWorkoutExercise(exercise: BundledExercises.headTilts),
          EditableWorkoutExercise(exercise: BundledExercises.neckHalfCircles),
          EditableWorkoutExercise(
              exercise: BundledExercises.lateralNeckStretchL),
          EditableWorkoutExercise(
              exercise: BundledExercises.lateralNeckStretchR),
          EditableWorkoutExercise(
              exercise: BundledExercises.levatorScapulaeStretchL),
          EditableWorkoutExercise(
              exercise: BundledExercises.levatorScapulaeStretchR),
          EditableWorkoutExercise(exercise: BundledExercises.backNeckStretch),
          EditableWorkoutExercise(
              exercise: BundledExercises.shoulderRotationBW),
          EditableWorkoutExercise(
              exercise: BundledExercises.shoulderRotationFW),
        ])
  ];
}
