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

import 'package:feeel/components/exercise_sheet.dart';
import 'package:feeel/components/illustration_widget.dart';
import 'package:feeel/models/translated_exercise.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ExercisePickerRow extends StatelessWidget {
  final bool checked;
  final Function(bool?)? onChanged;
  final TranslatedExercise translatedExercise;
  final FeeelSwatch colorSwatch;

  const ExercisePickerRow(
      {Key? key,
      required this.checked,
      this.onChanged,
      required this.translatedExercise,
      required this.colorSwatch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: colorSwatch
          .getColor(FeeelShade.dark.invertIfDark(Theme.of(context).brightness)),
      value: checked,
      title: Row(children: [
        Expanded(child: Text(translatedExercise.getName())),
        IconButton(
          //TODO add labels to all icons
          icon: const Icon(Icons.info_outline),
          tooltip: AppLocalizations.of(context)!.btnMoreInfo,
          onPressed: () =>
              ExerciseSheet.showSheet(context, translatedExercise, colorSwatch),
        ),
      ]),
      secondary: IllustrationWidget(
          imageAssetString:
              AssetUtil.getExerciseThumb(translatedExercise.exercise),
          flipped: translatedExercise.exercise.imageFlipped),
      onChanged: onChanged,
    );
  }
}
