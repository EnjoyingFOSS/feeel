import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class FinishPage extends StatelessWidget {
  final Color color;

  const FinishPage({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BackButton(
          color: color,
        ),
        Expanded(child: Center(child: Image.asset("assets/image_success.png"))),
        Padding(
            padding: EdgeInsets.all(16),
            child: Center(
                child: Text(
              "You're glowing!".i18n,
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.w900, color: color),
            )))
      ],
    ));
  }
}
