import 'package:feeel/widgets/triangle.dart';
import 'package:flutter/material.dart';

class IllustrationLayout extends StatelessWidget {
  static const double BOTTOM_PADDING = 48;
  final Widget illustrationImage;
  final Widget illustrationTitle;

  final Color color;

  const IllustrationLayout(
      {Key key, this.color, this.illustrationImage, this.illustrationTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bottomViewPadding = MediaQuery.of(context).viewPadding.bottom;
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
                  child: illustrationImage))
        ],
      )),
      Container(
        height: 128,
        alignment: Alignment.bottomCenter,
        child: illustrationTitle,
        color: color,
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: bottomViewPadding > BOTTOM_PADDING
                ? bottomViewPadding
                : BOTTOM_PADDING),
        width: double.infinity,
      )
    ]);
  }
}
