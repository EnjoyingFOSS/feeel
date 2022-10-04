// Copyright (C) 2019 Miroslav Mazel
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

import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';

import '../../../components/illustration_widget.dart';
import '../../../db/asset_helper.dart';
import '../../../theming/feeel_shade.dart';
import 'body_exercise_content.dart';
import 'head_exercise_content.dart';

class ExerciseIllustration extends StatelessWidget {
  final String? imageSlug;
  final String title;
  final Color bgColor;
  final bool headOnly;
  final bool animated;
  final bool paused;
  final bool onBreak;
  final int triangleSeed;
  final bool flipped;
  final bool floating;
  final FeeelSwatch colorSwatch;
  final void Function() onLearn;

  const ExerciseIllustration(
      {Key? key,
      required this.imageSlug,
      required this.title,
      required this.headOnly,
      required this.animated,
      required this.paused,
      required this.onBreak,
      required this.triangleSeed,
      required this.flipped,
      required this.onLearn,
      required this.colorSwatch,
      required this.bgColor,
      required this.floating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final screenSize = MediaQuery.of(context).size;

    String? imageAssetString =
        (imageSlug != null) ? AssetHelper.getImage(imageSlug!) : null;

    if (animated) {
      if (imageAssetString != null) {
        AssetImage(imageAssetString).evict();
      }
    }

    return Expanded(
        child: headOnly
            ? HeadExerciseContent(
                color: colorSwatch.getColorByBrightness(
                    FeeelShade.lightest, brightness),
                onBreak: onBreak,
                illustration: IllustrationWidget(
                  imageAssetString: imageAssetString,
                  flipped: flipped,
                ),
                triangleSeed: triangleSeed,
                alignment: floating ? Alignment.center : Alignment.bottomCenter,
              )
            : (floating
                ? BodyExerciseContent(
                    onBreak: onBreak,
                    illustration: IllustrationWidget(
                        imageAssetString: imageAssetString, flipped: flipped),
                    alignment: Alignment.center,
                  )
                : Stack(children: <Widget>[
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: screenSize.width / screenSize.height > 0.8
                            ? FractionallySizedBox(
                                heightFactor: 0.372,
                                widthFactor: 1.0,
                                child: Container(
                                  color: bgColor,
                                ),
                              )
                            : Container(
                                color: bgColor,
                                height: screenSize.width * 0.372)),
                    BodyExerciseContent(
                        onBreak: onBreak,
                        illustration: IllustrationWidget(
                            imageAssetString: imageAssetString,
                            flipped: flipped))
                  ])));
  }
}
