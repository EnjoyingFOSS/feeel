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

import 'package:flutter/material.dart';

import 'feeel_colors.dart';
import 'feeel_shade.dart';

class FeeelThemes {
  static final _lightColors = ColorScheme(
      //todo extract colors to separate file
      primary: FeeelColors.blue.getColor(FeeelShade.dark),
      onPrimary: Colors.white,
      secondary: FeeelColors.orange.getColor(FeeelShade.dark),
      onSecondary: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black87,
      background: Colors.white,
      onBackground: Colors.black87,
      error: const Color(0xFFB00020),
      onError: Colors.white,
      brightness: Brightness.light);

  static final _darkColors = ColorScheme(
      primary: FeeelColors.blue.getColor(FeeelShade.light),
      onPrimary: Colors.black87,
      secondary: FeeelColors.orange.getColor(FeeelShade.light),
      onSecondary: Colors.black87,
      surface: Colors.black,
      onSurface: Colors.white,
      background: Colors.black,
      onBackground: Colors.white,
      error: const Color(0xFFB00020),
      onError: Colors.white,
      brightness: Brightness.dark);

  static final ThemeData lightTheme = _getThemeFromScheme(_lightColors);
  static final ThemeData darkTheme = _getThemeFromScheme(_darkColors);

  static ThemeData _getThemeFromScheme(ColorScheme colors) {
    return ThemeData(
        colorScheme: colors,
        visualDensity: VisualDensity.standard,
        backgroundColor: colors.background,
        brightness: colors.brightness,
        primaryColor: colors.primary,
        scaffoldBackgroundColor: colors.background,
        cardColor: colors.surface,
        errorColor: colors.error,
        toggleableActiveColor: colors.primary,
        appBarTheme: AppBarTheme(
            color: colors.background,
            iconTheme: IconThemeData(color: colors.primary),
            titleTextStyle: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: colors.primary),
            centerTitle: false,
            elevation: 0));
  }
}
