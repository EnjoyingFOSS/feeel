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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:feeel/db/asset_helper.dart';
import 'package:feeel/screens/workout_detail/components/learn_info.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/components/illustration_widget.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

import 'head_exercise_content.dart';
import 'body_exercise_content.dart';

class ExerciseLayout extends StatelessWidget {
  static const double BOTTOM_PADDING = 16;
  final String? imageSlug;
  final String title;
  final bool headOnly;
  final bool animated;
  final bool paused;
  final bool onBreak;
  final int triangleSeed;
  final bool flipped;
  final void Function() onLearn;

  final FeeelSwatch colorSwatch;

  const ExerciseLayout(
      {Key? key,
      required this.colorSwatch,
      required this.imageSlug,
      required this.flipped,
      required this.headOnly,
      required this.animated,
      required this.title,
      required this.paused,
      required this.onBreak,
      required this.onLearn,
      this.triangleSeed = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? imageAssetString =
        (imageSlug != null) ? AssetHelper.getImage(imageSlug!) : null;

    if (animated) {
      if (imageAssetString != null) {
        AssetImage(imageAssetString).evict();
      }
    }

    final brightness = Theme.of(context).brightness;
    final bottomViewPadding = MediaQuery.of(context).viewPadding.bottom;
    final fgColor =
        headOnly ? colorSwatch.getColor(FeeelShade.DARK) : Colors.white;
    final bgColor = headOnly
        ? Colors.transparent
        : (brightness == Brightness.dark
            ? colorSwatch.getColor(FeeelShade.DARKER)
            : colorSwatch.getColor(FeeelShade.DARK));

    return Column(children: [
      Expanded(
          child: headOnly
              ? HeadExerciseContent(
                  color: colorSwatch.getColorByBrightness(
                      FeeelShade.LIGHTEST, brightness),
                  onBreak: onBreak,
                  illustration: IllustrationWidget(
                    imageAssetString: imageAssetString,
                    flipped: flipped,
                  ),
                  triangleSeed: triangleSeed,
                )
              : BodyExerciseContent(
                  color: bgColor,
                  onBreak: onBreak,
                  illustration: IllustrationWidget(
                      imageAssetString: imageAssetString, flipped: flipped))),
      Container(
        child: Container(
          height: 152,
          alignment: Alignment.bottomCenter,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            onBreak
                ? Column(children: [
                    Text("Next up:".i18n,
                        style: TextStyle(
                            //todo use a style for this
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: fgColor)),
                    AutoSizeText(title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: fgColor),
                        minFontSize: 14,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis)
                  ])
                : AutoSizeText(title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: fgColor),
                    minFontSize: 14,
                    maxLines:
                        2, //todo use a fixed height (wrap with Expanded and Align for centering) instead once I implement the description sheet (and get rid of the up arrow that way)
                    overflow: TextOverflow.ellipsis),
            Container(
              height: 8,
            ),
            if (paused || onBreak)
              LearnInfo(
                onTap: onLearn,
                bgColor: headOnly
                    ? (brightness == Brightness.dark
                        ? colorSwatch.getColor(FeeelShade.DARKER)
                        : colorSwatch.getColor(FeeelShade.DARK))
                    : const Color(0x26000000),
              ),
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
