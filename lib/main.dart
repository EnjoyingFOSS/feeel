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

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:feeel/audio/tts_helper.dart';
import 'package:feeel/screens/workout_list.dart';
import 'package:feeel/theming/feeel_colors.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'db/notification_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeMode =
      await AdaptiveTheme.getThemeMode() ?? AdaptiveThemeMode.light;
  runApp(MyApp(themeMode: themeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode themeMode;

  const MyApp({Key? key, this.themeMode = AdaptiveThemeMode.light})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light));
    NotificationHelper.helper.init(context);
    TTSHelper.tts.init(context);

    final lightColors = ColorScheme(
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

    final darkColors = ColorScheme(
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

    final lightTheme = getThemeFromScheme(lightColors);
    final darkTheme = getThemeFromScheme(darkColors);

    return AdaptiveTheme(
        light: lightTheme,
        dark: darkTheme,
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) => MaterialApp(
            title: 'Feeel',
            theme: lightTheme,
            darkTheme: darkTheme,
            supportedLocales: [
              const Locale('en'),
              const Locale('cs'),
              const Locale('de'),
              const Locale('es'),
              const Locale('eu'),
              const Locale('fr'),
              const Locale('it'),
              const Locale('nb'),
              const Locale('nl'),
              const Locale('ru'),
              const Locale('tr'),
            ],
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: I18n(
                child: WorkoutListScreen()))); //todo not seeing current locale!
  }

  ThemeData getThemeFromScheme(ColorScheme colors) {
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
