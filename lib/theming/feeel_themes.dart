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

import 'package:feeel/theming/feeel_swatches.dart';
import 'package:flutter/material.dart';

import 'feeel_color.dart';
import 'feeel_shade.dart';

class FeeelThemes {
  //todo make into providers too?
  static final lightColors = ColorScheme(
      //todo extract colors to separate file
      primary:
          FeeelSwatches.swatches[FeeelColor.blue]!.getColor(FeeelShade.dark),
      onPrimary: Colors.white,
      primaryContainer: FeeelSwatches.swatches[FeeelColor.blue]!
          .getColor(FeeelShade.lightest),
      onPrimaryContainer:
          FeeelSwatches.swatches[FeeelColor.blue]!.getColor(FeeelShade.dark),
      secondary:
          FeeelSwatches.swatches[FeeelColor.orange]!.getColor(FeeelShade.dark),
      onSecondary: Colors.white,
      secondaryContainer: FeeelSwatches.swatches[FeeelColor.orange]!
          .getColor(FeeelShade.lightest),
      onSecondaryContainer:
          FeeelSwatches.swatches[FeeelColor.orange]!.getColor(FeeelShade.dark),
      surface: Colors.white,
      onSurface: Colors.black87,
      background: Colors.white,
      onBackground: Colors.black87,
      error: const Color(0xFFB00020),
      onError: Colors.white,
      brightness: Brightness.light);

  static final darkColors = ColorScheme(
      primary:
          FeeelSwatches.swatches[FeeelColor.blue]!.getColor(FeeelShade.light),
      onPrimary: Colors.black87,
      primaryContainer:
          FeeelSwatches.swatches[FeeelColor.blue]!.getColor(FeeelShade.darkest),
      onPrimaryContainer:
          FeeelSwatches.swatches[FeeelColor.blue]!.getColor(FeeelShade.light),
      secondary:
          FeeelSwatches.swatches[FeeelColor.orange]!.getColor(FeeelShade.light),
      onSecondary: Colors.black87,
      secondaryContainer: FeeelSwatches.swatches[FeeelColor.orange]!
          .getColor(FeeelShade.darkest),
      onSecondaryContainer:
          FeeelSwatches.swatches[FeeelColor.orange]!.getColor(FeeelShade.light),
      surface: Colors.grey.shade900, //todo test
      onSurface: Colors.white,
      background: Colors.black,
      onBackground: Colors.white,
      error: const Color(0xFFFF2828),
      onError: Colors.black87,
      brightness: Brightness.dark);

  static ThemeData getThemeFromScheme(ColorScheme colorScheme) {
    //todo system bar icon colors are wrong
    return ThemeData(
        materialTapTargetSize: MaterialTapTargetSize.padded,
        colorScheme: colorScheme,
        visualDensity: VisualDensity.standard,
        brightness: colorScheme.brightness,
        primaryColor: colorScheme.primary,
        scaffoldBackgroundColor: colorScheme.background,
        cardColor: colorScheme.surface,
        appBarTheme: AppBarTheme(
            color: Colors.transparent,
            iconTheme: IconThemeData(color: colorScheme.primary),
            titleTextStyle: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: colorScheme.primary),
            centerTitle: false,
            elevation: 0),
        navigationBarTheme: NavigationBarThemeData(
            iconTheme: MaterialStateProperty.resolveWith<IconThemeData?>(
                (states) => (states.contains(MaterialState.selected)
                    ? IconThemeData(color: colorScheme.onPrimaryContainer)
                    : IconThemeData(color: colorScheme.onSurface))),
            shadowColor: colorScheme.onBackground,
            indicatorColor: colorScheme.primaryContainer,
            backgroundColor: colorScheme.background,
            height: 56,
            elevation: 8),
        navigationDrawerTheme: NavigationDrawerThemeData(
            iconTheme: MaterialStateProperty.resolveWith<IconThemeData?>(
                (states) => (states.contains(MaterialState.selected)
                    ? IconThemeData(color: colorScheme.onPrimaryContainer)
                    : IconThemeData(color: colorScheme.onSurface))),
            shadowColor: colorScheme.onBackground,
            backgroundColor: colorScheme.background,
            indicatorColor: colorScheme.primaryContainer,
            elevation: 8,
            labelTextStyle: MaterialStateProperty.resolveWith((states) =>
                (!states.contains(MaterialState.disabled) && states.contains(MaterialState.selected)) ? TextStyle(color: colorScheme.onPrimaryContainer, fontWeight: FontWeight.w500) : null)),
        switchTheme: SwitchThemeData(thumbColor: MaterialStateProperty.resolveWith<Color?>((states) => (!states.contains(MaterialState.disabled) && states.contains(MaterialState.selected)) ? colorScheme.primary : null), trackColor: MaterialStateProperty.resolveWith<Color?>((states) => (!states.contains(MaterialState.disabled) && states.contains(MaterialState.selected)) ? colorScheme.primary.withAlpha(80) : null)),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color?>((states) =>
              (!states.contains(MaterialState.disabled) &&
                      states.contains(MaterialState.selected))
                  ? colorScheme.primary
                  : null),
        ),
        checkboxTheme: CheckboxThemeData(fillColor: MaterialStateProperty.resolveWith<Color?>((states) => (!states.contains(MaterialState.disabled) && states.contains(MaterialState.selected)) ? colorScheme.primary : null)));
  }
}
