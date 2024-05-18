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

import 'dart:ui';

import 'package:feeel/theming/feeel_color.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';

class FeeelSwatches {
  static const swatches = {
    FeeelColor.blue: FeeelSwatch({
      FeeelShade.lightest: Color(0xffE0EDFF), // 0xffD9E9FF ?
      FeeelShade.lighter: Color(0xffB6D1F4),
      FeeelShade.light: Color(0xff5493E6),
      FeeelShade.dark: Color(0xff0B65DB),
      FeeelShade.darker: Color(0xff0050BA), //0853D2?
      FeeelShade.darkest: Color(0xff072E63), // 002794 112355
    }),
    FeeelColor.orange: FeeelSwatch({
      FeeelShade.lightest: Color(0xffFAEBE0), //FFE9D6
      FeeelShade.lighter: Color(0xffFFC799), //F3CEB3
      FeeelShade.light: Color(0xffE96216), //F56E00
      FeeelShade.dark: Color(0xffC35400), //CC4800 E96216 D65A00 c45300 CC4800
      FeeelShade.darker: Color(0xffAD2100), // 8F3E00 C03800
      FeeelShade.darkest: Color(0xff3D1B00)
    }), // 371407 830B00 48140F 2B0400 2A0C09
    FeeelColor.green: FeeelSwatch({
      FeeelShade.lightest: Color(0xffE2F1EB),
      FeeelShade.lighter: Color(0xff9BE9C7), //85FFCA
      FeeelShade.light: Color(0xff00cc74), //07B067
      FeeelShade.dark: Color(0xff00854B),
      FeeelShade.darker: Color(0xff00662C), //00663A
      FeeelShade.darkest: Color(0xff003D23),
    }),
    FeeelColor.gray: FeeelSwatch({
      FeeelShade.lightest: Color(0xffE9EDED),
      FeeelShade.lighter: Color(0xffC7D1D0),
      FeeelShade.light: Color(0xff859997),
      FeeelShade.dark: Color(0xff343E3D),
      FeeelShade.darker: Color(0xff252c2c),
      FeeelShade.darkest: Color(0xff131616),
    })
  };
}
