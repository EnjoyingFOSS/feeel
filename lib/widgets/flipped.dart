import 'package:flutter/widgets.dart';

class Flipped extends StatelessWidget {
  static Matrix4 _transformation = Matrix4.identity()..scale(-1.0, 1.0);
  final Widget child;

  const Flipped({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      child: child,
      alignment: Alignment.center,
      transform: _transformation,
    );
  }
}
