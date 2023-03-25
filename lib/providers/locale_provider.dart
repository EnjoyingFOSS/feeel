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

import 'dart:ui';

import 'package:feeel/db/preference_keys.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProviderNotifier extends Notifier<Locale?> {
  @override
  Locale? build() {
    SharedPreferences.getInstance().then((sharedPreferences) {
      final localeString = sharedPreferences.getString(PreferenceKeys.locale);
      if (localeString != null) {
        state = _localeFromString(localeString);
      }
    });
    return null;
  }

  Future<void> setPreferredLocale(Locale? locale) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    if (locale != null) {
      await sharedPreferences.setString(
          PreferenceKeys.locale, _localeToString(locale));
    } else {
      await sharedPreferences.remove(PreferenceKeys.locale);
    }

    state = locale;
  }

  String _localeToString(Locale locale) => locale.countryCode == null
      ? locale.languageCode
      : "${locale.languageCode}_${locale.countryCode}";
  Locale _localeFromString(String string) {
    final splitString = string.split("_");
    return splitString.length == 1
        ? Locale(splitString.first)
        : Locale(splitString.first, splitString.last);
  }
}

final localeProvider = NotifierProvider<LocaleProviderNotifier, Locale?>(
    LocaleProviderNotifier.new);
