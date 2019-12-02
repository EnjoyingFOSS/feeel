// Copyright (C) 2019 Miroslav Mazel
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'package:feeel/controllers/workout_controller.dart';
import 'package:feeel/models/exercise.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/widgets/break_illustration.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';
import 'exercise_illustration.dart';

class ExercisePage extends StatefulWidget {
  final Workout workout;
  final Color color;
  final WorkoutController workoutController;

  const ExercisePage(
      {Key key,
      @required this.workout,
      @required this.color,
      @required this.workoutController})
      : super(key: key);

  @override
  ExerciseScreenView createState() {
    return ExerciseScreenView();
  }
}

class ExerciseScreenView extends State<ExercisePage> implements WorkoutView {
  //todo ban swipe to go back unless controls are shown?
  bool _paused = false;
  bool _infoShown = false;
  bool _break = true;
  double _dragStart = 0;
  int _seconds;
  PageController _pageController = PageController();
  static const Duration TRANSITION_DURATION = Duration(microseconds: 600);
  static const Curve TRANSITION_CURVE = Curves.easeIn;

  // todo on setup, do _second = widget.workoutExercise.breakBeforeDuration ?

  @override
  void initState() {
    widget.workoutController.setView(this);
    _seconds = widget.workout.workoutExercises[0].breakBeforeDuration;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Material(
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: <Widget>[
              ExerciseHeader(
                  color: widget.color,
                  paused: _paused,
                  counterText: _seconds.toString()),
              _paused
                  ? Row(children: <Widget>[
                      Expanded(
                          child: IconButton(
                        iconSize: 32,
                        color: widget.color,
                        icon: Icon(Icons.skip_previous),
                        onPressed: () {
                          widget.workoutController.skipToPrevious();
                        },
                      )),
                      Expanded(
                        child: IconButton(
                            iconSize: 64,
                            color: widget.color,
                            icon: Icon(Icons.play_arrow),
                            onPressed: () {
                              widget.workoutController.togglePlayPause();
                            }),
                      ),
                      Expanded(
                        child: IconButton(
                            iconSize: 32,
                            color: widget.color,
                            icon: Icon(
                              Icons.skip_next,
                            ),
                            onPressed: () {
                              widget.workoutController.skipToNext();
                            }),
                      )
                    ])
                  : Text(
                      "Tap for controls".i18n,
                      style: TextStyle(color: widget.color),
                    ),
              Expanded(
                child: PageView.builder(
                  //todo
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, i) {
                    if (i % 2 == 0) {
                      return BreakIllustration(
                          color: widget.color,
                          nextExercise: widget.workout
                              .workoutExercises[(i / 2).floor()].exercise);
                    } else
                      return ExerciseIllustration(
                        color: widget.color,
                        exercise: widget
                            .workout.workoutExercises[(i / 2).floor()].exercise,
                      );
                  },
                  itemCount: widget.workout.workoutExercises.length * 2,
                ),
              )
            ],
          )),
      onTap: () {
        //todo setstate
        setState(() {
          widget.workoutController.togglePlayPause();
        });
      },
      //todo drag
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.workoutController.clearView();
  }

  @override
  void onBreak(int workoutPos, WorkoutExercise nextExercise) {
    // TODO: implement onBreak
    setState(() {
      _break = true;
      _seconds = nextExercise.breakBeforeDuration;
    });
    _pageController.animateToPage(workoutPos * 2,
        duration: TRANSITION_DURATION, curve: TRANSITION_CURVE);
  }

  @override
  void onExercise(int workoutPos, WorkoutExercise exercise) {
    setState(() {
      _break = false;
      _seconds = exercise.duration;
    });
    _pageController.animateToPage(workoutPos * 2 + 1,
        duration: TRANSITION_DURATION, curve: TRANSITION_CURVE);
  }

  @override
  void onCount(int seconds) {
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

  @override
  void onStart(int workoutPos, WorkoutExercise nextExercise) {
    setState(() {
      _seconds = nextExercise.breakBeforeDuration;
    });
  }
}

class ExerciseHeader extends StatelessWidget {
  final String counterText; //todo is this really the best way to rerender time?
  final Color color;
  final bool paused;

  ExerciseHeader({Key key, this.color, this.counterText, this.paused = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Align(
            alignment: Alignment.topCenter,
            child: Stack(
              children: <Widget>[
                if (paused)
                  Align(
                    child: Padding(
                      child: BackButton(
                        color: color,
                      ),
                      padding: EdgeInsets.all(16),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          counterText,
                          style: TextStyle(
                              fontSize: paused ? 24 : 72,
                              fontWeight: FontWeight.w900,
                              color: color),
                        ))),
              ],
            )));
  }
}
