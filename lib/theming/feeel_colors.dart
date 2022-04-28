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

import 'dart:ui';

import 'feeel_swatch.dart';

class FeeelColors {
  //500 should be dark enough to be usable on light surfaces, 300 light enough for dark surfaces
  static final blue = FeeelSwatch(
    lightest: const Color(0xffE0EDFF), // 0xffD9E9FF ?
    lighter: const Color(0xffB6D1F4),
    light: const Color(0xff5493E6),
    dark: const Color(0xff0B65DB),
    darker: const Color(0xff0050BA), //0853D2?
    darkest: const Color(0xff072E63), // 002794 112355
  );

  static final orange = FeeelSwatch(
      lightest: const Color(0xffFAEBE0), //FFE9D6
      lighter: const Color(0xffFFC799), //F3CEB3
      light: const Color(0xffE96216), //F56E00
      dark: const Color(0xffC35400), //CC4800 E96216 D65A00 c45300 CC4800
      darker: const Color(0xffAD2100), // 8F3E00 C03800
      darkest: const Color(0xff3D1B00)); // 371407 830B00 48140F 2B0400 2A0C09

  static final green = FeeelSwatch(
    lightest: const Color(0xffE2F1EB),
    lighter: const Color(0xff9BE9C7), //85FFCA
    light: const Color(0xff00cc74), //07B067
    dark: const Color(0xff00854B),
    darker: const Color(0xff00662C), //00663A
    darkest: const Color(0xff003D23),
  );

  static final gray = FeeelSwatch(
    lightest: const Color(0xffE9EDED),
    lighter: const Color(0xffC7D1D0),
    light: const Color(0xff859997),
    dark: const Color(0xff343E3D),
    darker: const Color(0xff252c2c),
    darkest: const Color(0xff131616),
  );
}
