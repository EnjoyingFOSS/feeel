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

import 'package:flutter/material.dart';

class BodyExerciseContent extends StatelessWidget {
  final Color color;
  final bool onBreak;
  final Widget illustration;
  final bool squareRatio;

  const BodyExerciseContent(
      {Key? key,
      required this.color,
      required this.onBreak,
      required this.illustration,
      this.squareRatio = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Align(
            alignment: Alignment.bottomCenter,
            child: squareRatio || screenSize.width / screenSize.height > 0.8
                ? FractionallySizedBox(
                    heightFactor: 0.372,
                    widthFactor: 1.0,
                    child: Container(
                      color: color,
                    ),
                  )
                : Container(color: color, height: screenSize.width * 0.372)),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child:
                    Opacity(opacity: onBreak ? 0.5 : 1.0, child: illustration)))
      ],
    );
  }
}
