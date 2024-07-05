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

import 'dart:ui';

import 'package:feeel/db/preference_keys.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProviderNotifier extends Notifier<Locale?> {
  static const _bcp47LocaleSeperator = '-';
  @override
  Locale? build() {
    SharedPreferences.getInstance().then((sharedPreferences) {
      final localeStringSplit = sharedPreferences
          .getString(PreferenceKeys.locale)
          ?.split(_bcp47LocaleSeperator);
      if (localeStringSplit != null) {
        final locale = localeStringSplit.length > 1
            ? Locale(localeStringSplit[0], localeStringSplit[1])
            : Locale(localeStringSplit[0]);
        if (AppLocalizations.supportedLocales.contains(locale)) state = locale;
      }
    });
    return null;
  }

  Future<void> setPreferredLocale(Locale? locale) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    if (locale != null) {
      await sharedPreferences.setString(
          PreferenceKeys.locale, locale.toLanguageTag());
    } else {
      await sharedPreferences.remove(PreferenceKeys.locale);
    }

    state = locale;
  }
}

final localeProvider = NotifierProvider<LocaleProviderNotifier, Locale?>(
    LocaleProviderNotifier.new);
