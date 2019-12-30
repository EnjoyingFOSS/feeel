// Copyright (C) 2019 Miroslav Mazel
// 
// This file is part of Feeel.
// 
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version. As an additional permission under
// section 7, you are allowed to distribute the software through an app
// store, even if that store has restrictive terms and conditions that
// are incompatible with the GPL, provided that the source is also
// available under the GPL with or without this permission through a
// channel without those restrictive terms and conditions.
// 
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'package:feeel/screens/workout_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:i18n_extension/i18n_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light));
    return MaterialApp(
        title: 'Feeel',
        supportedLocales: [
          const Locale('en'),
          const Locale('cs'),
        ],
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: getDayTheme(),
        home:
            I18n(child: WorkoutListScreen())); //todo not seeing current locale!
  }

  ThemeData getDayTheme() {
    var colors = ColorScheme(
        primary: Color(0xFF0B65DB),
        primaryVariant: Color(0xFF0B65DB),
        secondary: Color(0xffE96216),
        secondaryVariant: Color(0xFFE96216),
        surface: Colors.white,
        background: Colors.white,
        error: Color(0xFFB00020),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.black87,
        onBackground: Colors.black87,
        onError: Colors.black87,
        brightness: Brightness.light);

    return ThemeData(
      backgroundColor: colors.background,
      brightness: colors.brightness,
      colorScheme: colors,
      primaryColor: colors.primary,
      accentColor: colors.secondary,
      scaffoldBackgroundColor: colors.background,
      cardColor: colors.surface,
      errorColor: colors.error,
      buttonColor: colors.primary,
      toggleableActiveColor: colors.primary,
      textSelectionHandleColor: colors.secondary,
    );
  }

  ThemeData getNightTheme() {
    var colors = ColorScheme(
        primary: Color(0xFF0B65DB),
        primaryVariant: Color(0xFF0B65DB),
        secondary: Color(0xffE96216),
        secondaryVariant: Color(0xFFE96216),
        surface: Colors.black87,
        background: Colors.black87,
        error: Color(0xFFB00020),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onBackground: Colors.white,
        onError: Colors.white,
        brightness: Brightness.dark);

    return ThemeData(
      backgroundColor: colors.background,
      brightness: colors.brightness,
      colorScheme: colors,
      primaryColor: colors.primary,
      accentColor: colors.secondary,
      scaffoldBackgroundColor: colors.background,
      cardColor: colors.surface,
      errorColor: colors.error,
      buttonColor: colors.primary,
      toggleableActiveColor: colors.primary,
      textSelectionHandleColor: colors.secondary,
    );
  }
}
