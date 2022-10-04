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

import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class ExerciseControls extends StatelessWidget {
  final Color themeDarkColor;
  final void Function() togglePlayPause;
  final void Function() skipToPrevious;
  final void Function() skipToNext;

  const ExerciseControls(
      {Key? key,
      required this.themeDarkColor,
      required this.togglePlayPause,
      required this.skipToPrevious,
      required this.skipToNext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
          child: IconButton(
        iconSize: 32,
        color: themeDarkColor,
        tooltip: "Previous exercise".i18n,
        icon: const Icon(Icons.skip_previous),
        onPressed: skipToPrevious,
      )),
      Expanded(
        child: IconButton(
            iconSize: 64,
            color: themeDarkColor,
            tooltip: "Resume workout".i18n,
            icon: const Icon(Icons.play_arrow),
            onPressed: togglePlayPause),
      ),
      Expanded(
        child: IconButton(
            iconSize: 32,
            color: themeDarkColor,
            tooltip: "Next exercise".i18n,
            icon: const Icon(
              Icons.skip_next,
            ),
            onPressed: skipToNext),
      )
    ]);
  }
}
