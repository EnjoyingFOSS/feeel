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
          EditableWorkoutExercise(exerciseId: DefaultExercises.JUMPING_JACKS),
          EditableWorkoutExercise(exerciseId: DefaultExercises.WALL_SIT),
          EditableWorkoutExercise(exerciseId: DefaultExercises.PUSH_UPS),
          EditableWorkoutExercise(exerciseId: DefaultExercises.AB_CRUNCHES),
          EditableWorkoutExercise(exerciseId: DefaultExercises.STEP_UPS),
          EditableWorkoutExercise(exerciseId: DefaultExercises.SQUATS),
          EditableWorkoutExercise(exerciseId: DefaultExercises.CHAIR_DIPS),
          EditableWorkoutExercise(exerciseId: DefaultExercises.FOREARM_PLANK),
          EditableWorkoutExercise(exerciseId: DefaultExercises.HIGH_KNEES),
          EditableWorkoutExercise(exerciseId: DefaultExercises.LUNGES),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.PUSH_UP_ROTATIONS),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.SIDE_PLANK_L, exerciseDuration: 15),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.SIDE_PLANK_R,
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
          EditableWorkoutExercise(exerciseId: DefaultExercises.SPLIT_SQUATS_L),
          EditableWorkoutExercise(exerciseId: DefaultExercises.SPLIT_SQUATS_R),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.SIDE_SPLIT_SQUATS_L),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.SIDE_SPLIT_SQUATS_R),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.BULGARIAN_SPLIT_SQUATS_L),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.BULGARIAN_SPLIT_SQUATS_R),
          EditableWorkoutExercise(exerciseId: DefaultExercises.SQUATS),
          EditableWorkoutExercise(
              exerciseId: DefaultExercises.KNEELING_KICKBACKS),
          EditableWorkoutExercise(exerciseId: DefaultExercises.CALF_RAISES_L),
          EditableWorkoutExercise(exerciseId: DefaultExercises.CALF_RAISES_R)
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
