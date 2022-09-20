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
import 'package:feeel/i18n/translations.dart';

import 'duration_dropdown.dart';

class TimingHeader extends StatelessWidget {
  final int exerciseDuration;
  final int breakDuration;
  final Function(int value) onExerciseDurationChanged;
  final Function(int value) onBreakDurationChanged;

  const TimingHeader(
      {super.key,
      required this.exerciseDuration,
      required this.breakDuration,
      required this.onExerciseDurationChanged,
      required this.onBreakDurationChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: <Widget>[
            Expanded(
                child: DurationDropdown(
              chosenValue: exerciseDuration,
              predefinedValues: const [15, 30, 60],
              decoration: InputDecoration(
                  labelText: "Exercise duration".i18n, filled: true),
              onChanged: onExerciseDurationChanged,
            )),
            Container(
              width: 16,
            ),
            Expanded(
                child: DurationDropdown(
              chosenValue: breakDuration,
              predefinedValues: const [5, 10, 15],
              decoration: InputDecoration(
                  //todo ellipsize
                  labelText: "Break duration".i18n,
                  filled: true),
              onChanged: onBreakDurationChanged,
            ))
          ],
        ));
  }
}
