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
import 'package:feeel/helpers/tts_helper.dart';
import 'package:feeel/models/exercise.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'exercise_illustration.dart';
import 'expandable_card.dart';

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
  double _dragStart = 0;
  int _seconds = 0;
  PageController _pageController = PageController();
  static const Duration TRANSITION_DURATION = Duration(
   microseconds: 600);
   static const Curve TRANSITION_CURVE = Curves.easeIn;

  // todo on setup, do _second = widget.workoutExercise.breakBeforeDuration ?

  @override
  void initState() {
    widget.workoutController.setView(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          color: Colors.white, //todo gradient
          child: Column(
            children: <Widget>[
              ExerciseHeader(
                  color: widget.color,
                  paused: _paused,
                  counterText: _seconds.toString()),
              _paused
                  ? Row(children: <Widget>[
                      Expanded(
                          child: Icon(Icons.skip_previous,
                              size: 32, color: widget.color)),
                      Expanded(
                          child: Icon(Icons.play_arrow,
                              size: 64, color: widget.color)),
                      Expanded(
                          child: Icon(
                        Icons.skip_next,
                        color: widget.color,
                        size: 32,
                      ))
                    ])
                  : Text(
                      "Tap for controls",
                      style: TextStyle(color: widget.color),
                    ),
              Expanded(
                child: PageView.builder(
                  //todo
                  controller: _pageController,
                  itemBuilder: (context, i) {
                    return ExerciseIllustration(
                      infoShown: false,
                      color: widget.color,
                      exercise: widget.workout.workoutExercises[i].exercise,
                    );
                  },
                  itemCount: widget.workout.workoutExercises.length,
                ),
              )
            ],
          )),
      onTap: () {
        //todo setstate
        setState(() {
          _paused = !_paused;
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
    _pageController.animateToPage(workoutPos, duration: TRANSITION_DURATION, curve: TRANSITION_CURVE);
  }

  @override
  void onCount(int seconds) {
    setState(() {
      _seconds = seconds;
    });
  }

  @override
  void onExercise(int workoutPos, WorkoutExercise exercise) {
    _pageController.animateToPage(workoutPos, duration: TRANSITION_DURATION, curve: TRANSITION_CURVE);
  }

  @override
  void onPause() {
    // TODO: implement onPause
  }

  @override
  void onPlay() {
    // TODO: implement onPlay
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
                      child: IconButton(
                        //todo add onPress effect
                        icon: Icon(
                          Icons.arrow_back,
                        ),
                        color: color,
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
