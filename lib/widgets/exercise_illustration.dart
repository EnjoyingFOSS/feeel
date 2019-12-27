import 'package:feeel/models/exercise.dart';
import 'package:flutter/material.dart';

import 'illustration_layout.dart';
import 'package:feeel/i18n/translations.dart';

class ExerciseIllustration extends StatelessWidget {
  static const double BOTTOM_PADDING = 32;
  final Color color;
  final Exercise exercise;

  const ExerciseIllustration(
      {Key key, @required this.color, @required this.exercise})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationLayout(
      color: color,
      illustrationImage: exercise.image != null
          ? (exercise.twoSided
              ? Transform(
                  child: Image.asset(exercise.image),
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..scale(-1.0, 1.0),
                )
              : Image.asset(exercise.image))
          : Text("Image missing".i18n),
      illustrationTitle: Text(exercise.name.i18n,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white)),
    );
  }
}
