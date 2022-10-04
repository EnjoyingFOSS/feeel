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

import 'package:feeel/i18n/translations.dart';

class DurationUtil {
  static String getDurationLongform(int durationSecs) {
    final mins = durationSecs ~/ 60;
    final secs = durationSecs % 60;
    return "%1d min., %2d sec."
        .i18n
        .replaceFirst("%1d", mins.toString())
        .replaceFirst("%2d", secs.toString());
  }

  static String getDurationShortform(int durationSecs) {
    final mins = (durationSecs ~/ 60).toString().padLeft(2, "0");
    final secs = (durationSecs % 60).toString().padLeft(2, "0");
    return "$mins:$secs";
  }
}
