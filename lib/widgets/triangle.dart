import 'dart:math';

import 'package:flutter/material.dart';

class Triangle extends StatelessWidget {
  Color color;
  int seed;
  double dimension;

  Triangle({@required this.dimension, @required this.color, this.seed = 0});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        size: Size(dimension, dimension),
        painter: TrianglePainter(color, seed));
  }
}

class TrianglePainter extends CustomPainter {
  Paint _paint;
  double rx, ry, rr;

  TrianglePainter(Color color, int seed) {
    var random = Random(seed);
    _paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    rx = random.nextDouble();
    ry = random.nextDouble();
    rr = random.nextDouble();
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.lineTo(rx * size.width, size.height);
    path.lineTo(size.width, ry * size.height);
    path.close();

    int rotation = (rr * 4).floor();
    canvas.translate(size.width / 2, size.height / 2);
    canvas.rotate(rotation * pi / 2);
    canvas.translate(-size.width / 2, -size.height / 2);

    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
