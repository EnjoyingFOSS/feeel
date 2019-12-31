// Copyright (C) 2019 Miroslav Mazel
// 
// This file is part of Feeel.
// 
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version. As an additional permission under
// section 7, you are allowed to distribute the software through an app
// store, even if that store has restrictive terms and conditions that
// are incompatible with the GPL, provided that the source is also
// available under the GPL with or without this permission through a
// channel without those restrictive terms and conditions.
// 
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'dart:math';

import 'package:flutter/material.dart';

class Triangle extends StatelessWidget {
  final Color color;
  final int seed;
  final double dimension;

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
    if (rx < 0.5)
      path.lineTo(size.width, (ry + 1) * size.height / 2);
    else
      path.lineTo(size.width, ry * size.height / 2);
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
