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

import 'package:feeel/db/preference_keys.dart';
import 'package:feeel/enums/feeel_theme_mode.dart';
import 'package:feeel/models/feeel_theme_meta.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeMetaProviderNotifier extends Notifier<FeeelThemeMeta> {
  static const _defaultTheme =
      FeeelThemeMeta(mode: FeeelThemeMode.light, personalized: false);

  @override
  FeeelThemeMeta build() {
    SharedPreferences.getInstance().then((sharedPreferences) {
      final themePref = FeeelThemeMode.values[
          sharedPreferences.getInt(PreferenceKeys.themeMode) ??
              _defaultTheme.mode.index];
      final themePersonalized =
          sharedPreferences.getBool(PreferenceKeys.themePersonalized) ?? false;
      state = FeeelThemeMeta(mode: themePref, personalized: themePersonalized);
    });
    return _defaultTheme;
  }

  Future<void> setTheme(FeeelThemeMeta theme) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt(PreferenceKeys.themeMode, theme.mode.index);
    await sharedPreferences.setBool(
        PreferenceKeys.themePersonalized, theme.personalized);
    state = theme;
  }
}

final themeMetaProvider =
    NotifierProvider<ThemeMetaProviderNotifier, FeeelThemeMeta>(
        ThemeMetaProviderNotifier.new);
