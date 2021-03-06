// Copyright (C) 2019–2021 Miroslav Mazel
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version. As an additional permission under
// section 7, you are allowed to distribute the software through an app
// store, even if that store has restrictive terms and conditions that
// are incompatible with the AGPL, provided that the source is also
// available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

import 'head_exercise_content.dart';
import 'body_exercise_content.dart';

class ExerciseLayout extends StatelessWidget {
  static const double BOTTOM_PADDING = 16;
  final Widget illustration;
  final String title;
  final bool headOnly;
  final bool expanded;
  final bool paused;
  final bool onBreak;
  final int triangleSeed;

  final FeeelSwatch colorSwatch;

  const ExerciseLayout(
      {Key? key,
      required this.colorSwatch,
      required this.illustration,
      required this.headOnly,
      required this.title,
      required this.expanded,
      required this.paused,
      required this.onBreak,
      this.triangleSeed = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomViewPadding = MediaQuery.of(context).viewPadding.bottom;
    final fgColor =
        headOnly ? colorSwatch.getColor(FeeelShade.DARK) : Colors.white;
    final bgColor =
        headOnly ? Colors.transparent : colorSwatch.getColor(FeeelShade.DARK);
    return Column(children: [
      headOnly
          ? HeadExerciseContent(
              color: colorSwatch.getColorByBrightness(
                  FeeelShade.LIGHTEST, Theme.of(context).brightness),
              onBreak: onBreak,
              illustration: illustration,
              triangleSeed: triangleSeed,
            )
          : BodyExerciseContent(
              color: bgColor, onBreak: onBreak, illustration: illustration),
      Container(
        child: Container(
          height: 144,
          alignment: Alignment.bottomCenter,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              expanded ? Icons.expand_more : Icons.expand_less,
              color: paused ? fgColor : fgColor.withAlpha(127),
            ),
            onBreak
                ? Column(children: [
                    Text("Next up:".i18n,
                        style: TextStyle(
                            //todo use a style for this
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: fgColor)),
                    Text(title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: fgColor))
                  ])
                : Text(title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: fgColor))
          ]), //todo make illustrationTitle responsive
          width: double.infinity,
        ),
        color: bgColor,
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: bottomViewPadding > BOTTOM_PADDING
                ? bottomViewPadding
                : BOTTOM_PADDING),
      )
    ]);
  }
}
