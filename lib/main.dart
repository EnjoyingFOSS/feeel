// Copyright (C) 2020 Miroslav Mazel
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

import 'package:feeel/audio/tts_helper.dart';
import 'package:feeel/screens/workout_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:i18n_extension/i18n_widget.dart';

import 'db/notification_helper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final dayColors = ColorScheme(
      primary: Color(0xFF0B65DB),
      primaryVariant: Color(0xFF0050BA), //used as primaryColorDark in theme
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

  final nightColors = ColorScheme(
      primary: Color(0xFF0B65DB),
      primaryVariant: Color(0xFF0050BA), //used as primaryColorDark in theme
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

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light));
    NotificationHelper.helper.init(context);
    TTSHelper.tts.init(context);
    var colors = dayColors;
    return MaterialApp(
        title: 'Feeel',
        supportedLocales: [
          const Locale('en'),
          const Locale('es'),
          const Locale('it'),
          const Locale('ru'),
          const Locale('nl'),
          const Locale('cs'),
        ],
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: ThemeData(
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
            textSelectionHandleColor: colors.secondary,
            appBarTheme: AppBarTheme(
                color: colors.background,
                iconTheme: IconThemeData(color: colors.onBackground),
                textTheme: TextTheme(
                    headline6: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        color: colors.onBackground)),
                elevation: 0,
                brightness: Brightness.light)),
        home:
            I18n(child: WorkoutListScreen())); //todo not seeing current locale!
  }
}
