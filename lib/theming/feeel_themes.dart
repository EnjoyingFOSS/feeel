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

import 'package:feeel/theming/feeel_color.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatches.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FeeelThemes {
  //TODO make into providers too?
  static final lightColors = ColorScheme(
      //TODO extract colors to separate file
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
      surface: Colors.grey.shade900, //TODO test
      onSurface: Colors.white,
      background: Colors.black,
      onBackground: Colors.white,
      error: const Color(0xFFFF2828),
      onError: Colors.black87,
      brightness: Brightness.dark);

  static ThemeData getThemeFromScheme(ColorScheme colorScheme) {
    //TODO system bar icon colors are wrong
    return ThemeData(
        useMaterial3: true,
        cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
        materialTapTargetSize: MaterialTapTargetSize.padded,
        colorScheme: colorScheme,
        visualDensity: VisualDensity.standard,
        brightness: colorScheme.brightness,
        primaryColor: colorScheme.primary,
        scaffoldBackgroundColor: colorScheme.background,
        cardColor: colorScheme.surface,
        bottomSheetTheme:
            const BottomSheetThemeData(surfaceTintColor: Colors.transparent),
        pageTransitionsTheme: const PageTransitionsTheme(
            builders: <TargetPlatform, PageTransitionsBuilder>{
              TargetPlatform.android: ZoomPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
              TargetPlatform.linux: CupertinoPageTransitionsBuilder(),
              TargetPlatform.macOS: CupertinoPageTransitionsBuilder()
            }),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          shape: const StadiumBorder(),
        ),
        appBarTheme: AppBarTheme(
            systemOverlayStyle: colorScheme.brightness == Brightness.light
                ? SystemUiOverlayStyle.dark.copyWith(
                    statusBarColor: colorScheme.background,
                    statusBarBrightness: Brightness.light,
                    statusBarIconBrightness: Brightness.dark)
                : SystemUiOverlayStyle.light.copyWith(
                    statusBarColor: colorScheme.background,
                    statusBarBrightness: Brightness.dark,
                    statusBarIconBrightness: Brightness.light),
            color: Colors.transparent,
            iconTheme: IconThemeData(color: colorScheme.primary),
            titleTextStyle: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: colorScheme.primary),
            centerTitle: false,
            elevation: 0),
        navigationBarTheme: NavigationBarThemeData(
            iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>(
                (states) => (states.contains(WidgetState.selected)
                    ? IconThemeData(color: colorScheme.primary)
                    : IconThemeData(color: colorScheme.onSurface))),
            shadowColor: colorScheme.onBackground,
            indicatorColor: colorScheme.background,
            elevation: 16,
            backgroundColor: colorScheme.background,
            height: 56,
            surfaceTintColor: Colors.transparent),
        navigationDrawerTheme: NavigationDrawerThemeData(
            iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>(
                (states) => (states.contains(WidgetState.selected)
                    ? IconThemeData(color: colorScheme.onPrimaryContainer)
                    : IconThemeData(color: colorScheme.onSurface))),
            shadowColor: colorScheme.onBackground,
            backgroundColor: colorScheme.surface,
            indicatorColor: colorScheme.primaryContainer,
            elevation: 8,
            labelTextStyle:
                WidgetStateProperty.resolveWith((states) => (!states.contains(WidgetState.disabled) && states.contains(WidgetState.selected)) ? TextStyle(color: colorScheme.onPrimaryContainer, fontWeight: FontWeight.w500) : null)),
        switchTheme: SwitchThemeData(thumbColor: WidgetStateProperty.resolveWith<Color?>((states) => (!states.contains(WidgetState.disabled) && states.contains(WidgetState.selected)) ? colorScheme.primary : null), trackColor: WidgetStateProperty.resolveWith<Color?>((states) => (!states.contains(WidgetState.disabled) && states.contains(WidgetState.selected)) ? colorScheme.primary.withAlpha(80) : null)),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.resolveWith<Color?>((states) =>
              (!states.contains(WidgetState.disabled) &&
                      states.contains(WidgetState.selected))
                  ? colorScheme.primary
                  : null),
        ),
        checkboxTheme: CheckboxThemeData(fillColor: WidgetStateProperty.resolveWith<Color?>((states) => (!states.contains(WidgetState.disabled) && states.contains(WidgetState.selected)) ? colorScheme.primary : null)));
  }
}
