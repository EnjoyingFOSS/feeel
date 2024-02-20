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

/// intEnum in DB
enum Muscle {
  //TODO map the first ones to wger's categories
  absInGeneral,
  armsInGeneral,
  backInGeneral,
  calvesInGeneral,
  chestInGeneral,
  legsInGeneral,
  shouldersInGeneral,

  anteriorDeltoid, //TODO sort by body part, head to foot, rather than alphabetically
  bicepsBrachii,
  brachialis,
  obliquusExternusAbdominis,
  pectoralisMajor,
  quadricepsFemoris,
  rectusAbdominis,
  serratusAnterior,
  bicepsFemoris,
  gastrocnemius,
  gluteusMaximus,
  latissimusDorsi,
  soleus,
  trapezius,
  tricepsBrachii;

  static Muscle fromWgerMuscle(int wgerMuscleId) {
    switch (wgerMuscleId) {
      case 1:
        return Muscle.bicepsBrachii;
      case 2:
        return Muscle.anteriorDeltoid;
      case 3:
        return Muscle.serratusAnterior;
      case 4:
        return Muscle.pectoralisMajor;
      case 5:
        return Muscle.tricepsBrachii;
      case 6:
        return Muscle.rectusAbdominis;
      case 7:
        return Muscle.gastrocnemius;
      case 8:
        return Muscle.gluteusMaximus;
      case 9:
        return Muscle.trapezius;
      case 10:
        return Muscle.quadricepsFemoris;
      case 11:
        return Muscle.bicepsFemoris;
      case 12:
        return Muscle.latissimusDorsi;
      case 13:
        return Muscle.brachialis;
      case 14:
        return Muscle.obliquusExternusAbdominis;
      case 15:
        return Muscle.soleus;
      default:
        throw ArgumentError.value(
            wgerMuscleId); // TODO ALWAYS CATCH THIS, AS WGER'S DB MIGHT BE UPDATED!
    }
  }

  static Muscle fromWgerCategory(int wgerCategoryId) {
    switch (wgerCategoryId) {
      case 8:
        return Muscle.armsInGeneral;
      case 9:
        return Muscle.legsInGeneral;
      case 10:
        return Muscle.absInGeneral;
      case 11:
        return Muscle.chestInGeneral;
      case 12:
        return Muscle.backInGeneral;
      case 13:
        return Muscle.shouldersInGeneral;
      case 14:
        return Muscle.calvesInGeneral;
      default:
        throw ArgumentError.value(
            wgerCategoryId); // TODO ALWAYS CATCH THIS, AS WGER'S DB MIGHT BE UPDATED!
    }
  }
}
