// Copyright (C) 2019 Miroslav Mazel
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/screens/workout_list.dart';
import 'package:feeel/screens/workout_screen.dart';
import 'package:flutter/material.dart';

import 'models/exercise.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: getDayTheme(), home: WorkoutList());
  }

  ThemeData getNightTheme() {
    var colors = ColorScheme(
        primary: Color(0xFF99B433),
        primaryVariant: Color(0xFF99B433),
        secondary: Color(0xffE96216),
        secondaryVariant: Color(0xFFE96216),
        surface: Color(0xFF4d4d4d),
        background: Color(0xFF333333),
        error: Color(0xFFB00020),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onBackground: Colors.white,
        onError: Colors.white,
        brightness: Brightness.dark);

    return ThemeData(
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

  ThemeData getDayTheme() {
    var colors = ColorScheme(
        primary: Color(0xFF99B433),
        primaryVariant: Color(0xFF99B433),
        secondary: Color(0xffE96216),
        secondaryVariant: Color(0xFFE96216),
        surface: Color(0xFFFFFFFF),
        background: Color(0xFFFFFFFF),
        error: Color(0xFFB00020),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onBackground: Colors.white,
        onError: Colors.white,
        brightness: Brightness.dark);

    return ThemeData(
        // brightness: colors.brightness,
        // colorScheme: colors,
        // primaryColor: colors.primary,
        // accentColor: colors.secondary,
        // scaffoldBackgroundColor: colors.background,
        // cardColor: colors.surface,
        // errorColor: colors.error,
        // buttonColor: colors.primary,
        // toggleableActiveColor: colors.primary,
        // textSelectionHandleColor: colors.secondary,
        );
  }
}
