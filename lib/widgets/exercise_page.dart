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
import 'package:feeel/models/workout_exercise.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'expandable_card.dart';

class ExercisePage extends StatefulWidget {
  static const DEFAULT_COLOR = Color(0xFF0061DF);
  final WorkoutExercise workoutExercise;
  final Color color;

  const ExercisePage({Key key, this.workoutExercise, this.color = DEFAULT_COLOR})
      : super(key: key);

  @override
  ExerciseScreenView createState() {
    return ExerciseScreenView();
  }
}

class ExerciseScreenView extends State<ExercisePage> {
  //todo ban swipe to go back unless controls are shown?
  bool _controlsShown = false;
  bool _onBreak = true;
  bool _infoShown = false;
  double _dragStart = 0;
  int _second;

  // todo on setup, do _second = widget.workoutExercise.breakBeforeDuration ?

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          color: Colors.white, //todo gradient
          child: Column(
            children: <Widget>[
              SafeArea(
                  bottom: false,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Stack(
                        children: <Widget>[
                          if (_controlsShown)
                            Align(
                              child: Padding(
                                child: IconButton(
                                  //todo add onPress effect
                                  icon: Icon(
                                    Icons.arrow_back,
                                  ),
                                  color: widget.color,
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
                                    "30",
                                    style: TextStyle(
                                        fontSize: _controlsShown ? 24 : 72,
                                        fontWeight: FontWeight.w900,
                                        color: widget.color),
                                  ))),
                        ],
                      ))),
              _controlsShown
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
                  child: Stack(
                children: <Widget>[
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: widget.color,
                        height: MediaQuery.of(context).size.width * 0.372,
                      )),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: widget.workoutExercise.exercise.image != null
                              ? Image.asset(widget.workoutExercise.exercise.image)
                              : null))
                ],
              )),
              // FlatButton(
              //   child: Text("temp"),
              //   onPressed: () {
              //     TTSHelper.tts.speak(
              //         "This is a really long message that I need to play so that I can hide the application in the background.");
              //   },
              // ),
              Container(
                alignment: Alignment.center,
                child: SafeArea(
                    top: false,
                    child: Column(children: <Widget>[
                      Text(widget.workoutExercise.exercise.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: Colors.white)),
                      if (_infoShown)
                        Text(
                          "asdf",
                          textAlign: TextAlign.left, //todo make span full width
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        )
                    ])),
                color: widget.color,
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                width: double.infinity,
              )
            ],
          )),
      onTap: () {
        //todo setstate
        setState(() {
          _controlsShown = !_controlsShown;
        });
      },
      //todo drag
    );
  }

  @override
  void onSecondElapsed(int second) {
    // TODO: implement onSecondElapsed
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
