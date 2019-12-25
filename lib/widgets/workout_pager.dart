import 'package:feeel/controllers/workout_controller.dart';
import 'package:feeel/controllers/workout_page_types.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/screens/workout_detail.dart';
import 'package:feeel/widgets/workout_cover.dart';
import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';
import 'package:feeel/enums/workout_category.dart';

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
  Color color;

  @override
  void initState() {
    super.initState();
    color = Color(widget.workout.category.colorInt);
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
          color: color,
          onPressed: () {
            _pageController.jumpToPage(WorkoutPageTypes.EXERCISE.index);
            _workoutController.start();
            Wakelock.toggle(on: true);
          },
        ),
        ExercisePage(
            workoutController: _workoutController,
            workout: widget.workout,
            color: color),
        FinishPage(
          color: color,
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
