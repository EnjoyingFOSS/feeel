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

import 'dart:convert';
import 'dart:ui';

import 'package:feeel/db/database.dart';
import 'package:intl/intl.dart';

class LocaleUtil {
  static final supportedLocaleNames = {
    const Locale('en'): "English",
    const Locale('ar'): "العربية",
    const Locale('az'): "Azərbaycan dili",
    const Locale('ca'): "Català",
    const Locale('cs'): "Česky",
    const Locale('de'): "Deutsch",
    const Locale('el'): "Ελληνικά",
    const Locale('eo'): "Esperanto",
    const Locale('es'): "Español",
    const Locale('eu'): "Euskara",
    const Locale('fa'): "فارسی",
    const Locale('fr'): "Français",
    const Locale('he'): "עברית",
    const Locale('hr'): "Hrvatski",
    const Locale('id'): "Bahasa Indonesia",
    const Locale('it'): "Italiano",
    const Locale('nl'): "Nederlands",
    const Locale('pl'): "Polski",
    const Locale('pt', 'BR'): "Português (Brasil)",
    const Locale('pt'): "Português",
    const Locale('ru'): "Русский",
    const Locale('sv'): "Svenska",
    const Locale('tr'): "Türkçe",
    const Locale('uk'): "Українська мова",
    const Locale('zh'): "中文"
  };

  static const wgerMap = {
    17: Locale('ar'),
    18: Locale('az'),
    9: Locale('cs'),
    1: Locale('de'),
    2: Locale('en'),
    19: Locale('eo'),
    4: Locale('es'),
    8: Locale('el'),
    20: Locale('fa'),
    12: Locale('fr'),
    21: Locale('he'),
    22: Locale('hr'),
    23: Locale('id'),
    13: Locale('it'),
    6: Locale('nl'),
    7: Locale('pt'),
    5: Locale('ru'),
    10: Locale('sv'),
    16: Locale('tr'),
    24: Locale('zh')
  };
  static const wgerFallbackId = 2;
  static const fallbackLocale = Locale('en');

  static bool wgerSupportsLocale(Locale locale) =>
      LocaleUtil.wgerMap.values.contains(locale);

  static Locale? fromWgerLanguage(int wgerLanguage) {
    if (!wgerMap.containsKey(wgerLanguage)) {
      return null;
    } else {
      return wgerMap[wgerLanguage];
    }
  }

  static String getWorkoutTranslation(Workout workout, Locale locale) {
    if (workout.translationJson != null) {
      final decodedJson = jsonDecode(workout.translationJson!) as Map;
      final localeTag = locale.toLanguageTag();
      if (decodedJson.containsKey(localeTag)) {
        return decodedJson[localeTag] as String;
      }
    }
    return workout.title;
  }

  /// only used for the cases where a CLDR language tag is required
  static String basicBcp47ToCLDR(Locale locale) =>
      Intl.canonicalizedLocale(locale.toLanguageTag());
}
