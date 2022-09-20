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

import 'package:feeel/db/asset_helper.dart';
import 'package:feeel/models/view/workout_exercise.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

import '../../../components/flipped.dart';

class ExerciseEditorRow extends StatelessWidget {
  final WorkoutExercise workoutExercise;
  final Widget trailing;
  final Widget? handle;

  const ExerciseEditorRow(
      {Key? key,
      required this.workoutExercise,
      required this.trailing,
      this.handle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imageSlug = workoutExercise.exercise.imageSlug;
    return Row(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: imageSlug == null
            ? Container()
            : workoutExercise.exercise.flipped
                ? Flipped(
                    child: Image.asset(AssetHelper.getThumb(imageSlug),
                        width: 72, height: 72))
                : Image.asset(AssetHelper.getThumb(imageSlug),
                    width: 72, height: 72),
      ),
      Expanded(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          workoutExercise.exercise.name.i18n,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      )),
      trailing,
      handle ??
          Container(
            width: 16,
          )
    ]);
  }
}
