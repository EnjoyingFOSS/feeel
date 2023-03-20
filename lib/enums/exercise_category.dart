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

import 'package:feeel/theming/feeel_color.dart';

/// intEnum in DB
enum ExerciseCategory {
  strength(0, "Strength", FeeelColor.blue),
  stretching(1, "Stretching & yoga", FeeelColor.green),
  cardio(2, "Cardio", FeeelColor.orange);

  final String translationKey;
  final FeeelColor feeelColor;
  final int dbValue;
  const ExerciseCategory(this.dbValue, this.translationKey, this.feeelColor);

  // static ExerciseCategory fromDBValue(int dbValue) {
  //   //todo use map
  //   switch (dbValue) {
  //     case 0:
  //       return WorkoutCategory.strength;
  //     case 1:
  //       return WorkoutCategory.stretching;
  //     case 2:
  //       return WorkoutCategory.cardio;
  //     default:
  //       throw Exception("No workout category with this dbValue exists.");
  //   }
  // }
}
