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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

import '../../../theming/feeel_shade.dart';
import 'learn_info.dart';

class ExerciseFooter extends StatelessWidget {
  final bool onBreak;
  final Color fgColor;
  final Color bgColor;
  final String title;
  final bool headOnly;
  final bool paused;
  final double contentHeight;
  final double bottomPadding;
  final FeeelSwatch colorSwatch;
  final void Function() onLearn;

  const ExerciseFooter(
      {Key? key,
      required this.onBreak,
      required this.bgColor,
      required this.fgColor,
      required this.title,
      required this.headOnly,
      required this.paused,
      required this.onLearn,
      required this.colorSwatch,
      required this.bottomPadding,
      required this.contentHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return Container(
      color: bgColor,
      padding: EdgeInsets.only(left: 16, right: 16, bottom: bottomPadding),
      child: Container(
        height: contentHeight,
        alignment:
            Alignment.bottomCenter, //todo make illustrationTitle responsive
        width: double.infinity,
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
                      ? colorSwatch.getColor(FeeelShade.darker)
                      : colorSwatch.getColor(FeeelShade.dark))
                  : const Color(0x26000000),
            ),
        ]),
      ),
    );
  }
}
