import 'package:feeel/controllers/workout_controller.dart';
import 'package:feeel/controllers/workout_page_types.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/screens/workout_detail.dart';
import 'package:feeel/widgets/workout_cover.dart';
import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

import 'exercise_page.dart';
import 'finish_page.dart';

class WorkoutPager extends StatefulWidget {
  final Workout workout;

  const WorkoutPager({Key key, @required this.workout}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WorkoutPagerState();
  }
}

class WorkoutPagerState extends State<WorkoutPager> {
  WorkoutController _workoutController;
  PageController _pageController = PageController();
  static const DEFAULT_COLOR = Color(0xFF0061DF);

  @override
  void initState() {
    super.initState();
    _workoutController = WorkoutController(widget.workout);
  }

  @override
  Widget build(BuildContext context) {
    _workoutController.setOnFinish(() {
      Wakelock.toggle(on: false);
      _pageController.jumpToPage(WorkoutPageTypes.FINISH.index);
    });

    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: <Widget>[
        WorkoutCover(
          workout: widget.workout,
          color: DEFAULT_COLOR,
          onPressed: () {
            _pageController.jumpToPage(WorkoutPageTypes.EXERCISE.index);
            _workoutController.start();
            Wakelock.toggle(on: true);
          },
        ),
        ExercisePage(
            workoutController: _workoutController,
            workout: widget.workout,
            color: DEFAULT_COLOR),
        FinishPage(
          color: DEFAULT_COLOR,
        )
      ],
      // physics: NeverScrollableScrollPhysics(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _workoutController.close();
  }
}
