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

import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/utils/duration_util.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class EditorSubheader extends StatelessWidget {
  final WorkoutCategory category;
  final Function(WorkoutCategory? category) onCategoryChanged;
  final int? workoutDuration;

  const EditorSubheader(
      {Key? key,
      required this.category,
      required this.onCategoryChanged,
      this.workoutDuration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.only(left: 67, right: 16),
        child: Row(
          children: [
            DropdownButtonHideUnderline(
                child: DropdownButton(
                    style: theme.textTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                    value: category,
                    onChanged: onCategoryChanged,
                    items: List.generate(WorkoutCategory.values.length, (i) {
                      final value = WorkoutCategory.values[i];
                      return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value.translationKey.i18n,
                          style: TextStyle(
                              color: value.colorSwatch.getColor(FeeelShade
                                  .darker
                                  .invertIfDark(theme.brightness))),
                        ),
                      );
                    }))),
            const Spacer(),
            if (workoutDuration != null && workoutDuration! > 0)
              Text(DurationUtil.getDurationLongform(workoutDuration!))
          ],
        ));
  }
}
