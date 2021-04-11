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

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'feeel_colors.dart';
import 'feeel_shade.dart';

class FeeelThemes {
  static final DEFAULT_THEME_MODE = AdaptiveThemeMode.dark;

  static final _lightColors = ColorScheme(
      //todo extract colors to separate file
      primary: FeeelColors.blue.getColor(FeeelShade.DARK),
      primaryVariant: FeeelColors.blue.getColor(FeeelShade.DARKER),
      secondary: FeeelColors.orange.getColor(FeeelShade.DARK),
      secondaryVariant: FeeelColors.orange.getColor(FeeelShade.DARKER),
      surface: Colors.white,
      background: Colors.white,
      error: Color(0xFFB00020),
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.black87,
      onBackground: Colors.black87,
      onError: Colors.black87,
      brightness: Brightness.light);

  static final _darkColors = ColorScheme(
      primary: FeeelColors.blue.getColor(FeeelShade.LIGHT),
      primaryVariant: FeeelColors.blue.getColor(FeeelShade.LIGHTER),
      secondary: FeeelColors.orange.getColor(FeeelShade.LIGHT),
      secondaryVariant: FeeelColors.orange.getColor(FeeelShade.LIGHTER),
      surface: Colors.black87,
      background: Colors.black87,
      error: Color(0xFFB00020),
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
      onBackground: Colors.white,
      onError: Colors.white,
      brightness: Brightness.dark);

  static final ThemeData lightTheme = _getThemeFromScheme(_lightColors);
  static final ThemeData darkTheme = _getThemeFromScheme(_darkColors);

  static ThemeData _getThemeFromScheme(ColorScheme colors) {
    return ThemeData(
        visualDensity: VisualDensity.standard,
        backgroundColor: colors.background,
        brightness: colors.brightness,
        colorScheme: colors,
        primaryColor: colors.primary,
        primaryColorDark: colors.primaryVariant,
        accentColor: colors.secondary,
        scaffoldBackgroundColor: colors.background,
        cardColor: colors.surface,
        errorColor: colors.error,
        buttonColor: colors.primary,
        toggleableActiveColor: colors.primary,
        appBarTheme: AppBarTheme(
            color: colors.background,
            iconTheme: IconThemeData(color: colors.onBackground),
            textTheme: TextTheme(
                headline6: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: colors.onBackground)),
            elevation: 0,
            brightness: Brightness.light));
  }
}
