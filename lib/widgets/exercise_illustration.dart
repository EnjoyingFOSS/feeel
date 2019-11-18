import 'package:feeel/models/exercise.dart';
import 'package:flutter/material.dart';

class ExerciseIllustration extends StatelessWidget {
  final Color color;
  final Exercise exercise;
  final bool infoShown;

  const ExerciseIllustration({Key key, @required this.color, @required this.exercise, @required this.infoShown}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: color,
                height: MediaQuery.of(context).size.width * 0.372,
              )),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: exercise.image != null
                      ? Image.asset(exercise.image)
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
              Text(exercise.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.white)),
              if (infoShown)
                Text(
                  "asdf",
                  textAlign: TextAlign.left, //todo make span full width
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )
            ])),
        color: color,
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        width: double.infinity,
      )
    ]);
  }
}