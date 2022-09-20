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

import 'package:feeel/db/default_exercises.dart';
import 'package:feeel/db/editable_workout.dart';
import 'package:feeel/db/editable_workout_exercise.dart';
import 'package:feeel/enums/workout_category.dart';

class DefaultWorkouts {
  //todo test if everything is the same as before
  static final defaultEditableWorkouts = [
    EditableWorkout(
        dbId: null,
        title: "Scientific 7 minute workout",
        initialWorkoutExercises: [
          EditableWorkoutExercise(exerciseId: DefaultExercises.jumpingJacks),
          EditableWorkoutExercise(exerciseId: DefaultExercises.wallSit),
          EditableWorkoutExercise(exerciseId: DefaultExercises.pushUps),
          EditableWorkoutExercise(exerciseId: DefaultExercises.abCrunches),
          EditableWorkoutExercise(exerciseId: DefaultExercises.stepUps),
          EditableWorkoutExercise(exerciseId: DefaultExercises.squats),
          EditableWorkoutExercise(exerciseId: DefaultExercises.chairDips),
          EditableWorkoutExercise(exerciseId: DefaultExercises.forearmPlank),
          EditableWorkoutExercise(exerciseId: DefaultExercises.highKnees),
          EditableWorkoutExercise(exerciseId: DefaultExercises.lunges),
          EditableWorkoutExercise(exerciseId: DefaultExercises.pushUpRotations),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.sidePlankL, exerciseDuration: 15),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.sidePlankR,
              breakDuration: 5,
              exerciseDuration: 15)
        ],
        countdownDuration: 5,
        breakDuration: 10,
        exerciseDuration: 30,
        category: WorkoutCategory.strength),
    EditableWorkout(
        dbId: null,
        title: "Leg workout",
        initialWorkoutExercises: [
          EditableWorkoutExercise(exerciseId: DefaultExercises.splitSquatsL),
          EditableWorkoutExercise(exerciseId: DefaultExercises.splitSquatsR),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.sideSplitSquatsL),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.sideSplitSquatsR),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.bulgarianSplitSquatsL),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.bulgarianSplitSquatsR),
          EditableWorkoutExercise(exerciseId: DefaultExercises.squats),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.kneelingKickbacks),
          EditableWorkoutExercise(exerciseId: DefaultExercises.calfRaisesL),
          EditableWorkoutExercise(exerciseId: DefaultExercises.calfRaisesR)
        ],
        countdownDuration: 5,
        breakDuration: 10,
        exerciseDuration: 30,
        category: WorkoutCategory.strength),
    // EditableWorkout(
    //     dbId: null,
    //     title: "Neck and shoulder stretches",
    //     initialWorkoutExercises: [
    //       //todo 15 as the default here?
    //       EditableWorkoutExercise(exerciseId: DefaultExercises.CHIN_TUCK),
    //       EditableWorkoutExercise(
    //           exerciseId: DefaultExercises.ARM_CIRCLES_FW,
    //           exerciseDuration: 15), //should be to from end, actually
    //       EditableWorkoutExercise(
    //           exerciseId: DefaultExercises.ARM_CIRCLES_BW,
    //           breakDuration: 5,
    //           exerciseDuration: 15),
    //       EditableWorkoutExercise(exerciseId: DefaultExercises.HEAD_TURNS),
    //       EditableWorkoutExercise(
    //           exerciseId: DefaultExercises.BACK_NECK_STRETCH,
    //           exerciseDuration: 20),
    //       EditableWorkoutExercise(
    //           exerciseId: DefaultExercises.LATERAL_NECK_STRETCH_LEFT,
    //           exerciseDuration: 35),
    //       EditableWorkoutExercise(
    //           exerciseId: DefaultExercises.LATERAL_NECK_STRETCH_RIGHT,
    //           exerciseDuration: 35),
    //       EditableWorkoutExercise(exerciseId: DefaultExercises.SHOULDER_SHRUG),
    //       EditableWorkoutExercise(
    //           exerciseId: DefaultExercises.FRONT_NECK_STRETCH),
    //       EditableWorkoutExercise(
    //           exerciseId: DefaultExercises.BACK_AND_LATERAL_NECK_STRETCH_LEFT,
    //           exerciseDuration: 8),
    //       EditableWorkoutExercise(
    //           exerciseId: DefaultExercises.BACK_AND_LATERAL_NECK_STRETCH_RIGHT,
    //           exerciseDuration: 8),
    //       EditableWorkoutExercise(
    //           exerciseId: DefaultExercises.CHIN_TUCK_WITH_FLEXION_WITH_ROTATION,
    //           exerciseDuration: 18),
    //       EditableWorkoutExercise(
    //           exerciseId: DefaultExercises.SHOULDER_ROTATION_FW,
    //           exerciseDuration: 15),
    //       EditableWorkoutExercise(
    //           exerciseId: DefaultExercises.SHOULDER_ROTATION_BW,
    //           breakDuration: 5,
    //           exerciseDuration: 15),
    //     ],
    //     category: WorkoutCategory.STRETCHING)
  ];
}
