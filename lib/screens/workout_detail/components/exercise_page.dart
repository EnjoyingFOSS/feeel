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

import 'package:feeel/components/exercise_sheet.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/models/full_workout.dart';
import '../../../controllers/workout_controller.dart';
import 'package:feeel/controllers/workout_view.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:feeel/enums/exercise_type.dart';
import 'package:feeel/enums/workout_stage.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

import 'exercise_layout.dart';

class ExercisePage extends StatefulWidget {
  final FullWorkout fullWorkout;
  final FeeelSwatch colorSwatch;
  final WorkoutController workoutController;

  const ExercisePage(
      {Key? key,
      required this.fullWorkout,
      required this.colorSwatch,
      required this.workoutController})
      : super(key: key);

  @override
  State<ExercisePage> createState() {
    return _ExercisePageState();
  }
}

class _ExercisePageState extends State<ExercisePage> implements WorkoutView {
  bool _paused = false;
  late int _seconds;
  int _exercisePos = 0;
  // int _stepPos = 0;
  WorkoutStage _stage = WorkoutStage.workoutBreak;

  // TODO on setup, do _second = widget.workoutExercise.breakBeforeDuration ?

  @override
  void initState() {
    widget.workoutController.setView(this);
    _seconds = widget.fullWorkout.workout.countdownDuration;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final exercise = _getExercise(_exercisePos);
    final headOnly = exercise.type == ExerciseType.head;

    return
        // CallbackShortcuts(
        //     //TODO doesn't always activate!!!
        //     bindings: {
        //       const SingleActivator(LogicalKeyboardKey.space): () => setState(() {
        //             widget.workoutController.togglePlayPause();
        //           })
        //     },
        //     child:
        GestureDetector(
      onTap: () {
        //TODO setstate
        setState(() {
          widget.workoutController.togglePlayPause();
        });
      },
      //TODO onHorizontalDrag
      onVerticalDragStart: (_) => onLearn(exercise),
      child: Material(
          color: Theme.of(context).colorScheme.background,
          child: ExerciseLayout(
            imageSlug:
                // (exercise.steps?[_stepPos].imageSlug != null)
                //     ? exercise.steps![_stepPos].imageSlug :
                exercise.imageSlug,
            animated: exercise.animated,
            flipped: exercise.flipped,
            onLearn: () => onLearn(exercise),
            colorSwatch: widget.colorSwatch,
            triangleSeed: headOnly ? exercise.name.hashCode : 0,
            secondsString: _seconds.toString(),
            skipToPrevious: () {
              widget.workoutController.skipToPrevious();
            },
            skipToNext: () {
              widget.workoutController.skipToNext();
            },
            togglePlayPause: () {
              widget.workoutController.togglePlayPause();
            },
            headOnly: exercise.type == ExerciseType.head,
            title: exercise.name.i18n,
            onBreak: _stage == WorkoutStage.workoutBreak ||
                _stage == WorkoutStage.countdown,
            paused: _paused,
          )),
    ); //);
  }

  void onLearn(Exercise exercise) {
    if (!_paused &&
        (_stage == WorkoutStage.workoutBreak ||
            _stage == WorkoutStage.countdown)) {
      widget.workoutController.togglePlayPause();
    }
    if (_paused) {
      ExerciseSheet.showSheet(context, exercise, widget.colorSwatch);
    }
  }

  @override
  void dispose() {
    super.dispose();
    widget.workoutController.clearView();
  }

  @override
  void onStart(int exercisePos, _, int duration) {
    setState(() {
      _seconds = duration;
      _exercisePos = exercisePos;
      _stage = WorkoutStage.workoutBreak;
    });
  }

  @override
  void onBreak(int exercisePos, _, int duration) {
    setState(() {
      _seconds = duration;
      _exercisePos = exercisePos;
      _stage = WorkoutStage.workoutBreak;
    });
  }

  @override
  void onExercise(int exercisePos, _, int duration) {
    setState(() {
      // if ((exercise.exercise.steps?.length ?? 0) > 1) {
      //   _preloadUpcomingStep();
      // } else {
      _preloadUpcomingExercise();
      // }

      _seconds = duration;
      _exercisePos = exercisePos;
      _stage = WorkoutStage.exercise;
      // _stepPos = 0; //TODO should I do this for the break too?
    });
  }

  Exercise _getExercise(int i) => widget.fullWorkout.exercises[i];

  // void _preloadUpcomingStep() {
  // final steps = _getExercise(_exercisePos).steps;
  // if (steps != null) {
  //   final nextImageSlug = (_stepPos + 1 < steps.length)
  //       ? steps[_stepPos + 1].imageSlug
  //       : steps[0].imageSlug;
  //   if (nextImageSlug != null) {
  //     precacheImage(
  //         Image.asset(AssetHelper.getImage(nextImageSlug)).image, context);
  //   }
  // }
  // }

  void _preloadUpcomingExercise() {
    if (_exercisePos + 1 < widget.fullWorkout.workoutExercises.length) {
      final nextImageSlug = _getExercise(_exercisePos + 1).imageSlug;
      precacheImage(
          Image.asset(AssetUtil.getImageOrPlaceholderPath(nextImageSlug)).image,
          context);
    }
  }

  @override
  void onCount(int seconds, _) {
    setState(() {
      _seconds = seconds;
    });
  }

  @override
  void onPause() {
    setState(() {
      _paused = true;
    });
  }

  @override
  void onPlay() {
    setState(() {
      _paused = false;
    });
  }

  // @override
  // void onLaterStep(int stepPos) {
  //   setState(() {
  //     _stepPos = stepPos;
  //   });
  // }

  @override
  void onCountdown(int exercisePos) {
    setState(() {
      _exercisePos = exercisePos;
      _stage = WorkoutStage.countdown;
    });
  }

  @override
  void onDispose() {}
}
