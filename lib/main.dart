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

import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:feeel/audio/tts_helper.dart';
import 'package:feeel/screens/workout_list/workout_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'db/notification_helper.dart';
import 'i18n/locale_helper.dart';
import 'theming/feeel_themes.dart';
// import 'package:window_size/window_size.dart';

void main() {
  // debugRepaintRainbowEnabled = true; //todo debug
  runApp(const Feeel());
}

class Feeel extends StatelessWidget {
  const Feeel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();

    // if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) { //todo not supported on Linux for ARM yet
    //   setWindowTitle('Feeel');
    //   setWindowMinSize(const Size(320, 568));
    //   setWindowMaxSize(Size.infinite);
    // }

    WidgetsBinding.instance
        .addPostFrameCallback((_) => _onWidgetBuilt(context));

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));

    return
        // Provider<FeeelDB>(
        //     //todo see https://drift.simonbinder.eu/faq/#using-the-database
        //     create: (context) => FeeelDB(),
        //     dispose: (context, db) => db.close(),
        //     child:
        AdaptiveTheme(
            light: FeeelThemes.lightTheme,
            dark: FeeelThemes.darkTheme,
            initial: AdaptiveThemeMode.light,
            builder: (theme, darkTheme) => MaterialApp(
                title: 'Feeel',
                theme: theme,
                darkTheme: darkTheme,
                supportedLocales: LocaleHelper.supportedLocales,
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                home: I18n(child: const WorkoutListScreen()))
            //)
            );
  }

  void _onWidgetBuilt(BuildContext context) {
    if (!Platform.isLinux) {
      TTSHelper.tts.init(
          context); //todo should really depend on whether the TTS preference is set
      NotificationHelper.helper.init(context);
    }
  }
}
