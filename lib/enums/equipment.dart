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

/// intEnum in DB
enum EquipmentPiece {
  none("None needed"),
  barbell("Barbell"),
  bench("Bench"),
  dumbbell("Dumbbell"),
  gymMat("Gym mat"),
  inclineBench("Incline bench"),
  kettlebell("Kettlebell"),
  pullUpBar("Pull-up bar"),
  swissBall("Swiss ball"),
  ezCurlBar("EZ curl bar");

  final String translationKey;

  const EquipmentPiece(this.translationKey);

  static EquipmentPiece fromWgerId(int wgerId) {
    switch (wgerId) {
      case 1:
        return barbell;
      case 2:
        return ezCurlBar;
      case 3:
        return dumbbell;
      case 4:
        return gymMat;
      case 5:
        return swissBall; //todo double-check that that's actually the ID
      case 6:
        return pullUpBar;
      case 7:
        return none;
      case 8:
        return bench;
      case 9:
        return inclineBench;
      case 10:
        return kettlebell;
      default:
        throw ArgumentError.value(wgerId);
    }
  }
}
