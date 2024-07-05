// Copyright Miroslav Mazel et al.
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// As an additional permission under section 7, you are allowed to distribute
// the software through an app store, even if that store has restrictive terms
// and conditions that are incompatible with the AGPL, provided that the source
// is also available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// As a limitation under section 7, all unofficial builds and forks of the app
// must be clearly labeled as unofficial in the app's name (e.g. "Feeel
// UNOFFICIAL", never just "Feeel") or use a different name altogether.
// If any code changes are made, the fork should use a completely different name
// and app icon. All unofficial builds and forks MUST use a different
// application ID, in order to not conflict with a potential official release.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'package:auto_size_text/auto_size_text.dart';
import 'package:feeel/components/triangle_partial.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/utils/format_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class WorkoutRecordRow extends StatelessWidget {
  static const _extent = 96.0;

  final WorkoutRecord workoutRecord;
  final FeeelSwatch colorSwatch;

  const WorkoutRecordRow(this.workoutRecord, this.colorSwatch, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final origTitle = workoutRecord.title;
    final theme = Theme.of(context);
    final percentage =
        workoutRecord.completedDuration / workoutRecord.workoutDuration;
    final isUncompleted =
        workoutRecord.completedDuration < workoutRecord.workoutDuration;

    return SizedBox(
        height: _extent,
        width: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Container(
                width: 72,
                height: 72,
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: TrianglePartial(
                  fillColor: colorSwatch.getColor(
                      FeeelShade.lightest.invertIfDark(theme.brightness)),
                  strokeColor: colorSwatch.getColor(
                      FeeelShade.light.invertIfDark(theme.brightness)),
                  ratioDone: percentage,
                  seed: origTitle.hashCode,
                )),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(children: [
                  Expanded(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                        //TODO workaround for https://github.com/flutter/flutter/issues/30647
                        type: MaterialType.transparency,
                        child: AutoSizeText(
                          origTitle,
                          style: isUncompleted
                              ? theme.textTheme.titleLarge?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground
                                      .withOpacity(0.5))
                              : theme.textTheme.titleLarge,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        workoutRecord.category.getTranslation(context),
                        style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: isUncompleted
                                ? colorSwatch
                                    .getColor(FeeelShade.darker
                                        .invertIfDark(theme.brightness))
                                    .withAlpha(127)
                                : colorSwatch.getColor(FeeelShade.darker
                                    .invertIfDark(theme.brightness))),
                      ),
                    ],
                  )),
                  const SizedBox(width: 8),
                  Text(
                    isUncompleted
                        ? AppLocalizations.of(context)!
                            .txtNewlineTimeCompletedOutOfTotal(
                                AppLocalizations.of(context)!
                                    .txtValueAndParenthesizedPercentage(
                                        FormatUtil.getDuration(context,
                                            workoutRecord.completedDuration),
                                        NumberFormat.percentPattern()
                                            .format(percentage)),
                                FormatUtil.getDuration(
                                    context, workoutRecord.workoutDuration))
                        : FormatUtil.getDuration(
                            context, workoutRecord.workoutDuration),
                    style: FormatUtil.durationTextStyle,
                    textAlign: TextAlign.right,
                  ),
                ])),
          ],
        ));
  }
}
