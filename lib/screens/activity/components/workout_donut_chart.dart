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

import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/providers/feeel_swatch_provider.dart';
import 'package:feeel/theming/feeel_color.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutDonutChart extends ConsumerWidget {
  final Map<WorkoutCategory, int> secondsByWorkoutCategory;

  const WorkoutDonutChart({super.key, required this.secondsByWorkoutCategory});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (secondsByWorkoutCategory.isEmpty) {
      return const SizedBox();
    } else {
      final feeelSwatches = ref.read(feeelSwatchProvider);
      return CustomPaint(
          painter: _DonutPainter(secondsByWorkoutCategory,
              feeelSwatches: feeelSwatches,
              brightness: Theme.of(context).brightness,
              bgColor: Theme.of(context).colorScheme.onBackground.withAlpha(31),
              completeBgColor:
                  Theme.of(context).colorScheme.onBackground.withAlpha(79)));
    }
  }
}

class _DonutPainter extends CustomPainter {
  static const _minimumTime =
      15 * 60; // 15 minutes as a 100% of the donut chart
  static const _gap = 1.25 / (2 * pi);
  static const _padding = 8;
  final _paintsByWorkoutCategory = <WorkoutCategory, Paint>{};
  final _percentagesByWorkoutCategory = <MapEntry<WorkoutCategory, double>>[];
  final Map<FeeelColor, FeeelSwatch> feeelSwatches;
  final Brightness brightness;
  late final Paint _bgPaint;
  late final bool _fullyComplete;

  _DonutPainter(Map<WorkoutCategory, int> secondsByWorkoutCategory,
      {required this.brightness,
      required this.feeelSwatches,
      required Color bgColor,
      required Color completeBgColor}) {
    final totalSeconds =
        secondsByWorkoutCategory.values.reduce((total, item) => total + item);

    _fullyComplete = totalSeconds > _minimumTime;

    _bgPaint =
        _fullyComplete ? _createPaint(completeBgColor) : _createPaint(bgColor);

    for (final category in secondsByWorkoutCategory.keys) {
      _paintsByWorkoutCategory.putIfAbsent(
          category, () => _createCategoryPaint(category, brightness));

      _percentagesByWorkoutCategory.add(MapEntry(
          category,
          2 *
              pi *
              (secondsByWorkoutCategory[category]! /
                  max(_minimumTime, totalSeconds))));
      _percentagesByWorkoutCategory.sort(((a, b) => (a.key.dbValue
          .compareTo(b.key.dbValue)))); //sort from longest to shortest
    }
  }

  Paint _createCategoryPaint(WorkoutCategory category, Brightness brightness) =>
      _createPaint(feeelSwatches[category.feeelColor]!
          .getColor(FeeelShade.dark.invertIfDark(brightness)));

  Paint _createPaint(Color color) {
    final paint = Paint();
    paint.color = color;
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 2;
    return paint;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final circleRadius = (size.shortestSide - _padding) / 2;
    final circleOffset = Offset(size.width / 2, size.height / 2);

    // background
    canvas.drawCircle(circleOffset, circleRadius, _bgPaint);

    // chart
    var startArc = 0.0;
    final gapEndSubtractionPerCategory = _gap *
        (_percentagesByWorkoutCategory.length - 1) /
        _percentagesByWorkoutCategory.length;
    for (final percentageByCategory in _percentagesByWorkoutCategory) {
      canvas.drawArc(
          Rect.fromCircle(center: circleOffset, radius: circleRadius),
          3 / 2 * pi + startArc,
          percentageByCategory.value -
              gapEndSubtractionPerCategory, // I don't know if I'm calculating this correctly
          false,
          _paintsByWorkoutCategory[percentageByCategory.key]!);
      startArc +=
          percentageByCategory.value - gapEndSubtractionPerCategory + _gap;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
