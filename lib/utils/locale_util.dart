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

import 'dart:ui';

class LocaleUtil {
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
}
