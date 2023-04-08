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

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/utils/url_util.dart';
import 'package:flutter/material.dart';

class ContributionOverlay extends StatelessWidget {
  final FeeelSwatch colorSwatch;

  const ContributionOverlay(
      {super.key,
      required this.colorSwatch}); //TODO not sure this can be const if using translations

  @override
  Widget build(BuildContext context) {
    final mainColor = colorSwatch
        .getColor(FeeelShade.dark.invertIfDark(Theme.of(context).brightness));
    return Center(
        child: Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background.withAlpha(223),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: mainColor.withAlpha(223))),
      padding: const EdgeInsets.all(16),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text(
          AppLocalizations.of(context)!.txtNoExerciseImageYet,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 12),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: colorSwatch.getColor(FeeelShade.dark),
                foregroundColor:
                    colorSwatch.getForegroundColor(FeeelShade.dark)),
            onPressed: () => URLUtil.launchURL(context,
                "https://gitlab.com/enjoyingfoss/feeel/-/wikis/Contributing"), //TODO have a more fitting page for just contributing the photos
            child: Text(AppLocalizations.of(context)!.btnContributeAnImage))
      ]),
    ));
  }
}