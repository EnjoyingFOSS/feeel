// Copyright (C) 2020 Miroslav Mazel
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

import 'package:feeel/db/asset_helper.dart';
import 'package:feeel/models/view/exercise.dart';
import 'package:flutter/material.dart';

import 'flipped.dart';
import 'illustration_layout.dart';
import 'package:feeel/i18n/translations.dart';

class ExerciseIllustration extends StatelessWidget {
  static const double BOTTOM_PADDING = 32;
  final Color color;
  final Exercise exercise;
  final Widget expandIcon;

  const ExerciseIllustration(
      {Key? key,
      required this.color,
      required this.exercise,
      required this.expandIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imageSlug = exercise.imageSlug;
    return IllustrationLayout(
      color: color,
      expandIcon: expandIcon,
      illustrationImage: imageSlug != null
          ? (exercise.twoSided
              ? Flipped(child: Image.asset(AssetHelper.getImage(imageSlug)))
              : Image.asset(AssetHelper.getImage(imageSlug)))
          : Text("Image missing".i18n),
      illustrationTitle: Text(exercise.name.i18n,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white)),
    );
  }
}
