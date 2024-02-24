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

import 'dart:async';

import 'package:feeel/components/exercise_sheet.dart';
import 'package:feeel/controllers/workout_controller.dart';
import 'package:feeel/controllers/workout_view.dart';
import 'package:feeel/enums/workout_stage.dart';
import 'package:feeel/models/full_workout.dart';
import 'package:feeel/models/translated_exercise.dart';
import 'package:feeel/screens/workout_detail/components/exercise_layout.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:flutter/material.dart';

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
    final fe = _getTranslatedExercise(_exercisePos);

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
      onVerticalDragStart: (_) => onLearn(fe),
      child: Material(
          color: Theme.of(context).colorScheme.background,
          child: ExerciseLayout(
            exercise:
                // (exercise.steps?[_stepPos].imageSlug != null)
                //     ? exercise.steps![_stepPos].imageSlug :
                fe.exercise,
            animated: fe.exercise.animated,
            flipped: fe.exercise.imageFlipped,
            onLearn: () => onLearn(fe),
            colorSwatch: widget.colorSwatch,
            triangleSeed: fe.exercise.headOnly ? fe.exercise.name.hashCode : 0,
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
            headOnly: fe.exercise.headOnly,
            title: fe.getName(),
            onBreak: _stage == WorkoutStage.workoutBreak ||
                _stage == WorkoutStage.countdown,
            paused: _paused,
          )),
    ); //);
  }

  void onLearn(TranslatedExercise translatedExercise) {
    if (!_paused &&
        (_stage == WorkoutStage.workoutBreak ||
            _stage == WorkoutStage.countdown)) {
      widget.workoutController.togglePlayPause();
    }
    if (_paused) {
      ExerciseSheet.showSheet(context, translatedExercise, widget.colorSwatch);
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

  TranslatedExercise _getTranslatedExercise(int i) =>
      widget.fullWorkout.translatedExercises[i];

  void _preloadUpcomingExercise() {
    if (_exercisePos + 1 < widget.fullWorkout.workoutExercises.length) {
      final nextExercise = _getTranslatedExercise(_exercisePos + 1).exercise;
      unawaited(precacheImage(
          Image.asset(AssetUtil.getExerciseImage(nextExercise)).image,
          context));
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
