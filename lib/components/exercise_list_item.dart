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

import 'package:feeel/components/exercise_sheet.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

import 'flipped.dart';

class ExerciseListItem extends StatelessWidget {
  final Exercise exercise; //todo migrate to FullExercise
  final FeeelSwatch colorSwatch;
  final Widget subtitle;

  const ExerciseListItem(
      {Key? key,
      required this.exercise,
      required this.subtitle,
      required this.colorSwatch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageSlug = exercise.imageSlug;
    return InkWell(
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              bottom: 8,
            ),
            child: exercise.flipped
                ? Flipped(
                    child: Image.asset(
                        AssetUtil.getThumbOrPlaceholderPath(imageSlug),
                        width: 64,
                        height: 64))
                : Image.asset(AssetUtil.getThumbOrPlaceholderPath(imageSlug),
                    width: 64, height: 64),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              exercise.name.i18n,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            subtitle
          ])
        ]),
        onTap: () => ExerciseSheet.showSheet(context, exercise, colorSwatch));
  }
}
