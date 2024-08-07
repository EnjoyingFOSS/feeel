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

import 'package:diacritic/diacritic.dart' as dia;
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FormatUtil {
  static String getDateTimeStringToSec(DateTime dateTime) =>
      dateTime.toString().split('.').first.replaceAll(':', "-");

  static String getDateString(DateTime dateTime) =>
      dateTime.toString().split(' ').first;

  static String getSafeLatinFilename(String name) => RegExp("[a-zA-Z0-9-_ ]*")
      .allMatches(dia.removeDiacritics(name))
      .map((match) => name.substring(match.start, match.end))
      .join()
      .trim();

  static const durationFontFeature = FontFeature.proportionalFigures();
  static const durationTextStyle =
      TextStyle(fontFeatures: <FontFeature>[durationFontFeature]);

  static String getDuration(BuildContext context, int durationSecs,
      {bool shortForm = true}) {
    final mins = (durationSecs ~/ 60);
    final secs = (durationSecs % 60);
    if (shortForm) {
      if (mins == 0) {
        return AppLocalizations.of(context)!
            .txtDurationFormatSec(secs.toString());
      } else if (secs == 0) {
        return AppLocalizations.of(context)!
            .txtDurationFormatMin(mins.toString());
      } else {
        return AppLocalizations.of(context)!.txtDurationFormat(
            mins.toString(), secs.toString().padLeft(2, "0"));
      }
    } else {
      return AppLocalizations.of(context)!
          .txtDurationFormat(mins.toString(), secs.toString().padLeft(2, "0"));
    }
  }
}
