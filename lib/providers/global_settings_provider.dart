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

import 'package:feeel/db/preference_keys.dart';
import 'package:feeel/enums/feeel_theme_mode.dart';
import 'package:feeel/models/feeel_theme.dart';
import 'package:feeel/providers/global_settings_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// settings that affect every screen
class GlobalSettingsProviderNotifier extends Notifier<GlobalSettingsState> {
  static const _defaultTheme =
      FeeelTheme(mode: FeeelThemeMode.light, personalized: false);

  @override
  GlobalSettingsState build() {
    SharedPreferences.getInstance().then((sharedPreferences) {
      final themePref = FeeelThemeMode.values[
          sharedPreferences.getInt(PreferenceKeys.themeMode) ??
              _defaultTheme.mode.index];
      final themePersonalized =
          sharedPreferences.getBool(PreferenceKeys.themePersonalized) ?? false;
      _loadTheme(FeeelTheme(mode: themePref, personalized: themePersonalized));
    });
    return const GlobalSettingsState(theme: _defaultTheme);
  }

  Future<void> setTheme(FeeelTheme theme) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt(PreferenceKeys.themeMode, theme.mode.index);
    await sharedPreferences.setBool(
        PreferenceKeys.themePersonalized, theme.personalized);
    state = state.copyWith(theme: theme);
  }

  void _loadTheme(FeeelTheme theme) {
    state = state.copyWith(theme: theme);
  }
}

final globalSettingsProvider =
    NotifierProvider<GlobalSettingsProviderNotifier, GlobalSettingsState>(
        GlobalSettingsProviderNotifier.new);
