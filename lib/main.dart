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

import 'dart:io';

import 'package:dynamic_color/dynamic_color.dart';
import 'package:feeel/audio/tts_helper.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/providers/feeel_swatch_provider.dart';
import 'package:feeel/providers/locale_provider.dart';
import 'package:feeel/providers/theme_meta_provider.dart';
import 'package:feeel/screens/home_pager/home_pager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'utils/notification_helper.dart';
import 'theming/feeel_themes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/date_symbol_data_local.dart' as date_intl;
// import 'package:window_size/window_size.dart';

void main() async {
  //TODO could maybe do my theme and language init here...
  // TODO think about implementing auto-update: https://pub.dev/packages/auto_update, https://github.com/GrapheneOS/Camera/issues/227#issuecomment-1132208894
  // debugRepaintRainbowEnabled = true; //TODO debug
  GetIt.I.registerSingleton(
      FeeelDB()); //TODO get rid of this after migrating to Riverpod fully
  await date_intl.initializeDateFormatting();
  runApp(const ProviderScope(child: Feeel()));
}

class Feeel extends ConsumerWidget {
  const Feeel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsFlutterBinding.ensureInitialized();

    // if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) { //TODO not supported on Linux for ARM yet
    //   setWindowTitle('Feeel');
    //   setWindowMinSize(const Size(320, 568));
    //   setWindowMaxSize(Size.infinite);
    // }

    WidgetsBinding.instance
        .addPostFrameCallback((_) => _onWidgetBuilt(context));

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));

    return DynamicColorBuilder(
            builder: (dynamicLightScheme, dynamicDarkScheme) {
      final preferredLocale = ref.watch(localeProvider);
      final themeMeta = ref.watch(themeMetaProvider);
      final swatchNotifier = ref.read(feeelSwatchProvider.notifier);

      final isThemePersonalized = themeMeta.personalized;
      final curThemeMode = themeMeta.mode.themeMode;

      final lightTheme = isThemePersonalized
          ? FeeelThemes.getThemeFromScheme(
              dynamicLightScheme ?? FeeelThemes.lightColors)
          : FeeelThemes.getThemeFromScheme(FeeelThemes.lightColors);

      final darkTheme = isThemePersonalized
          ? FeeelThemes.getThemeFromScheme(
              dynamicLightScheme ?? FeeelThemes.darkColors)
          : FeeelThemes.getThemeFromScheme(FeeelThemes.darkColors);

      if (isThemePersonalized) {
        final platformBrightness =
            MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                .platformBrightness;

        final curTheme = (curThemeMode == ThemeMode.dark ||
                (curThemeMode == ThemeMode.system &&
                    platformBrightness == Brightness.dark))
            ? darkTheme
            : lightTheme;

        Future(() =>
            swatchNotifier.setHarmonizationColor(curTheme.colorScheme.primary));
      } else {
        Future(() => swatchNotifier.setHarmonizationColor(null));
      }

      return MaterialApp(
          title: 'Feeel',
          themeMode: curThemeMode,
          theme: lightTheme,
          darkTheme: darkTheme,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: preferredLocale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          home: I18n(child: const HomePagerScreen()));
    })
        // );
        // })
        ;
  }

  void _onWidgetBuilt(BuildContext context) {
    if (!Platform.isLinux) {
      TTSHelper.tts.init(
          context); //TODO should really depend on whether the TTS preference is set
      NotificationHelper.helper.init(context);
    }
  }
}
