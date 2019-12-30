// Copyright (C) 2019 Miroslav Mazel
// 
// This file is part of Feeel.
// 
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version. As an additional permission under
// section 7, you are allowed to distribute the software through an app
// store, even if that store has restrictive terms and conditions that
// are incompatible with the GPL, provided that the source is also
// available under the GPL with or without this permission through a
// channel without those restrictive terms and conditions.
// 
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

enum WorkoutCategory { FULL_BODY, LEGS }

extension WorkoutCategoryExtension on WorkoutCategory {
  String get translationKey {
    switch (this) {
      case WorkoutCategory.FULL_BODY:
        return "Full body";
      case WorkoutCategory.LEGS:
        return "Legs";
      default:
        return null;
    }
  }

  int get colorInt {
    switch (this) {
      case WorkoutCategory.FULL_BODY:
        return 0xff0061DF;
      case WorkoutCategory.LEGS:
        return 0xffD65A00;
      default:
        return 0xff333333;
    }
  }
}
