// Copyright Miroslav Mazel et al.
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// As an additional permission under section 7, you are allowed to distribute
// the software through an app store, even if that store has restrictive terms
// and conditions that are incompatible with the AGPL, provided that the source
// is also available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// As a limitation under section 7, all unofficial builds and forks of the app
// must be clearly labeled as unofficial in the app's name (e.g. "Feeel
// UNOFFICIAL", never just "Feeel") or use a different name altogether.
// If any code changes are made, the fork should use a completely different name
// and app icon. All unofficial builds and forks MUST use a different
// application ID, in order to not conflict with a potential official release.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.
import 'dart:math';

import 'package:flutter/material.dart';

class TriangleFrame extends StatelessWidget {
  final Color color;
  final int seed;
  final Widget? child;

  late final bool rRightLean;
  late final double rYOffset, rPeakX;

  TriangleFrame({super.key, required this.color, this.seed = 60, this.child}) {
    final random = Random(seed);
    rRightLean = random.nextBool();
    rYOffset = random.nextDouble();
    rPeakX = random.nextDouble();
  }

  @override
  Widget build(BuildContext context) {
    final offsetYRatio = 1 - 0.25 * rYOffset;
    return AspectRatio(
        aspectRatio: 1,
        child: Stack(
          children: [
            Positioned.fill(
                child: CustomPaint(
                    painter: _BackgroundPainter(
                        color, rRightLean, offsetYRatio, rPeakX))),
            ClipPath(
                clipper: _TriangleClipper(rRightLean, offsetYRatio),
                child: child)
          ],
        ));
  }
}

class _TriangleClipper extends CustomClipper<Path> {
  final bool rightLean;
  final double offsetYRatio;

  _TriangleClipper(this.rightLean, this.offsetYRatio);

  @override
  Path getClip(Size size) {
    final clipPath = Path();

    if (rightLean) {
      clipPath
        ..lineTo(0, offsetYRatio * size.height)
        ..lineTo(size.width, size.height);
    } else {
      clipPath
        ..lineTo(0, size.height)
        ..lineTo(size.width, offsetYRatio * size.height);
    }
    clipPath
      ..lineTo(size.width, 0)
      ..close();

    return clipPath;
  }

  @override
  bool shouldReclip(_TriangleClipper oldClipper) {
    return oldClipper.offsetYRatio != offsetYRatio ||
        oldClipper.rightLean != rightLean;
  }
}

class _BackgroundPainter extends CustomPainter {
  final _trianglePaint = Paint();

  final bool rightLean;
  final double offsetYRatio, peakXRatio;

  _BackgroundPainter(
      Color color, this.rightLean, this.offsetYRatio, this.peakXRatio) {
    // init triangle paint
    _trianglePaint
      ..color = color
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    // Triangle path
    final trianglePath = Path();

    if (rightLean) {
      trianglePath
        ..moveTo(size.width, size.height)
        ..lineTo(0, offsetYRatio * size.height);
    } else {
      trianglePath
        ..moveTo(0, size.height)
        ..lineTo(size.width, offsetYRatio * size.height);
    }
    trianglePath
      ..lineTo(size.width / 4 + (size.width / 2) * peakXRatio, 0)
      ..close();

    canvas.drawPath(trianglePath, _trianglePaint);
  }

  @override
  bool shouldRepaint(_BackgroundPainter oldDelegate) {
    return oldDelegate.offsetYRatio != offsetYRatio ||
        oldDelegate.peakXRatio != peakXRatio ||
        oldDelegate.rightLean != rightLean;
  }
}
