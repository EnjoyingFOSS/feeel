import 'package:feeel/models/exercise.dart';
import 'package:feeel/widgets/illustration_layout.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class BreakIllustration extends StatelessWidget {
  static const double BOTTOM_PADDING = 32;
  final Color color;
  final Exercise nextExercise;

  const BreakIllustration(
      {Key key, @required this.color, @required this.nextExercise})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationLayout(
      color: color,
      illustrationImage: nextExercise.image != null
          ? ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.grey,
                BlendMode.saturation,
              ),
              child: Image.asset(nextExercise.image),
            )
          : null,
      illustrationTitle: Column(
        children: [
          Text("Next up:".i18n,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.white)),
          Text(nextExercise.name.i18n, //todo figure this out!!!
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white))
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      ),
    );
  }
}
