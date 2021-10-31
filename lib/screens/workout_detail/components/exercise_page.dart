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

import 'package:feeel/controllers/workout_controller.dart';
import 'package:feeel/enums/exercise_type.dart';
import 'package:feeel/models/view/workout.dart';
import 'package:feeel/models/view/workout_exercise.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/screens/workout_detail/components/exercise_layout.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class ExercisePage extends StatefulWidget {
  final Workout workout;
  final FeeelSwatch colorSwatch;
  final WorkoutController workoutController;

  const ExercisePage(
      {Key? key,
      required this.workout,
      required this.colorSwatch,
      required this.workoutController})
      : super(key: key);

  @override
  _ExercisePageState createState() {
    return _ExercisePageState();
  }
}

class _ExercisePageState extends State<ExercisePage> implements WorkoutView {
  //todo ban swipe to go back unless controls are shown?
  static const Duration TRANSITION_DURATION = Duration(microseconds: 600);
  static const Curve TRANSITION_CURVE = Curves.easeIn;

  bool _paused = false;
  bool _infoShown = false; //todo redesign with DraggableScrollableSheet
  late int _seconds;
  PageController _pageController = PageController();
  String? _descriptionText;
  double? _dragYStart;

  // todo on setup, do _second = widget.workoutExercise.breakBeforeDuration ?

  @override
  void initState() {
    widget.workoutController.setView(this);
    _seconds = widget.workout.countdownDuration;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeDarkColor = widget.colorSwatch
        .getColorByBrightness(FeeelShade.DARK, theme.brightness);
    return GestureDetector(
      child: Material(
          color: theme.backgroundColor,
          child: Column(
            children: <Widget>[
              ExerciseHeader(
                  color: themeDarkColor,
                  paused: _paused,
                  counterText: _seconds.toString()),
              _paused
                  ? Row(children: <Widget>[
                      Expanded(
                          child: IconButton(
                        iconSize: 32,
                        color: themeDarkColor,
                        tooltip: "Previous exercise".i18n,
                        icon: Icon(Icons.skip_previous),
                        onPressed: () {
                          widget.workoutController.skipToPrevious();
                        },
                      )),
                      Expanded(
                        child: IconButton(
                            iconSize: 64,
                            color: themeDarkColor,
                            tooltip: "Resume workout".i18n,
                            icon: Icon(Icons.play_arrow),
                            onPressed: () {
                              widget.workoutController.togglePlayPause();
                            }),
                      ),
                      Expanded(
                        child: IconButton(
                            iconSize: 32,
                            color: themeDarkColor,
                            tooltip: "Next exercise".i18n,
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
                      style: TextStyle(color: themeDarkColor),
                    ),
              Expanded(
                child: PageView.builder(
                  //todo
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, i) {
                    final exercise = widget
                        .workout.workoutExercises[(i / 2).floor()].exercise;
                    final imageSlug = exercise.imageSlug;
                    final headOnly = exercise.type == ExerciseType.HEAD;
                    return ExerciseLayout(
                      expanded: _infoShown,
                      paused: _paused,
                      colorSwatch: widget.colorSwatch,
                      title: exercise.name.i18n,
                      headOnly: headOnly,
                      onBreak: (i % 2 == 0),
                      triangleSeed: headOnly ? exercise.name.hashCode : 0,
                      imageSlug: imageSlug,
                      flipped: exercise.twoSided,
                    );
                  },
                  itemCount: widget.workout.workoutExercises.length * 2,
                ),
              ), // todo show drag handle
              if (_infoShown)
                Container(
                  color: widget.colorSwatch.getColor(FeeelShade.DARKER),
                  width: double.infinity,
                  height: 200, //todo style, height
                  child: _descriptionText != null
                      ? SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 16, 8, 8),
                              child: Text(_descriptionText!,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white))))
                      : Container(),
                )
            ],
          )),
      onTap: () {
        //todo setstate
        setState(() {
          widget.workoutController.togglePlayPause();
        });
      },
      //todo onHorizontalDrag
      onVerticalDragStart: (DragStartDetails details) {
        _dragYStart = details.globalPosition.dy;
      },
      onVerticalDragUpdate: (DragUpdateDetails details) {
        if (_dragYStart != null)
          _infoShown = _dragYStart! > details.globalPosition.dy;
      },
      // todo ? onVerticalDragCancel: ,
      onVerticalDragEnd: (DragEndDetails details) {
        _dragYStart = null;
        setState(() {});
      },
      //todo drag animation
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.workoutController.clearView();
  }

  @override
  void onStart(int workoutPos, WorkoutExercise nextExercise, int duration) {
    setState(() {
      _seconds = duration;
      _descriptionText = nextExercise.exercise.description.i18n;
    });
  }

  @override
  void onBreak(int workoutPos, WorkoutExercise nextExercise, int duration) {
    setState(() {
      _seconds = duration;
      _descriptionText = nextExercise.exercise.description.i18n;
    });
    _pageController.animateToPage(workoutPos * 2,
        duration: TRANSITION_DURATION, curve: TRANSITION_CURVE);
  }

  @override
  void onExercise(int workoutPos, WorkoutExercise exercise, int duration) {
    setState(() {
      _seconds = duration;
      _descriptionText = exercise.exercise.description.i18n;
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
}

class ExerciseHeader extends StatelessWidget {
  final String counterText; //todo is this really the best way to rerender time?
  final Color color;
  final bool paused;

  ExerciseHeader(
      {Key? key,
      required this.color,
      required this.counterText,
      this.paused = false})
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
                    alignment: AlignmentDirectional.centerStart,
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
