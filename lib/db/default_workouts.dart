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

// todo update based on latest shipped version
import 'package:feeel/db/default_exercises.dart';
import 'package:feeel/models/editable_workout.dart';
import 'package:feeel/models/editable_workout_exercise.dart';
import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/enums/workout_type.dart';

class DefaultWorkouts {
  //todo test if everything is the same as before
  static final defaultEditableWorkouts = [
    EditableWorkout(
        dbId: null,
        type: WorkoutType.bundled,
        title: "Scientific 7 minute workout",
        initialWorkoutExercises: [
          EditableWorkoutExercise(exercise: DefaultExercises.jumpingJacks),
          EditableWorkoutExercise(exercise: DefaultExercises.wallSit),
          EditableWorkoutExercise(exercise: DefaultExercises.pushUps),
          EditableWorkoutExercise(exercise: DefaultExercises.abCrunches),
          EditableWorkoutExercise(exercise: DefaultExercises.stepUps),
          EditableWorkoutExercise(exercise: DefaultExercises.squats),
          EditableWorkoutExercise(exercise: DefaultExercises.chairDips),
          EditableWorkoutExercise(exercise: DefaultExercises.forearmPlank),
          EditableWorkoutExercise(exercise: DefaultExercises.highKnees),
          EditableWorkoutExercise(exercise: DefaultExercises.lunges),
          EditableWorkoutExercise(exercise: DefaultExercises.pushUpRotations),
          EditableWorkoutExercise(
              exercise: DefaultExercises.sidePlankL, exerciseDuration: 15),
          EditableWorkoutExercise(
              exercise: DefaultExercises.sidePlankR,
              breakDuration: 5,
              exerciseDuration: 15)
        ],
        countdownDuration: 5,
        breakDuration: 10,
        exerciseDuration: 30,
        category: WorkoutCategory.strength),
    EditableWorkout(
        dbId: null,
        type: WorkoutType.bundled,
        title: "Leg workout",
        initialWorkoutExercises: [
          EditableWorkoutExercise(exercise: DefaultExercises.splitSquatsL),
          EditableWorkoutExercise(exercise: DefaultExercises.splitSquatsR),
          EditableWorkoutExercise(exercise: DefaultExercises.sideSplitSquatsL),
          EditableWorkoutExercise(exercise: DefaultExercises.sideSplitSquatsR),
          EditableWorkoutExercise(
              exercise: DefaultExercises.bulgarianSplitSquatsL),
          EditableWorkoutExercise(
              exercise: DefaultExercises.bulgarianSplitSquatsR),
          EditableWorkoutExercise(exercise: DefaultExercises.squats),
          EditableWorkoutExercise(exercise: DefaultExercises.kneelingKickbacks),
          EditableWorkoutExercise(exercise: DefaultExercises.calfRaisesL),
          EditableWorkoutExercise(exercise: DefaultExercises.calfRaisesR)
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
