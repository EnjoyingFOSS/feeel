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

class BundledExercises {
  // negative numbers represent stuff not in wger yet
  static const int jumpingJacks = 320,
      wallSit = 718,
      pushUps = 482,
      abCrunches = 167,
      stepUps = 981,
      squats = 615,
      chairDips = -7, //TODO LAST ONE THAT NEEDS AN ID!!!
      forearmPlank = 458,
      highKnees = 983,
      lunges = 984,
      pushUpRotations = 985,
      sidePlankL = 580,
      sidePlankR = 1019,
      sideSplitSquatsL = 986,
      sideSplitSquatsR = 987,
      bulgarianSplitSquatsL = 988,
      bulgarianSplitSquatsR = 989,
      pistolSquatsL = 456,
      pistolSquatsR = 1020,
      kneelingKickbacks = 990,
      calfRaisesL = 702,
      calfRaisesR = 1021,
      splitSquatsL = 991,
      splitSquatsR = 992,
      jumpRopeBasic = 993,
      armCirclesFW = 994,
      armCirclesBW = 995,
      pikePushUps = 454,
      mountainClimbers = 996,
      fourCountBurpees = 997,
      noPushUpBurpees = 998,
      squatThrusts = 616,
      reverseLunges = 999,
      legRaises = 377,
      floorDips = 1000,
      highPlank = 1001,
      childsPose = 1002,
      pullUp = 475,
      kettlebellDeadlift = 1003,
      sumoSquat = 632,
      shoulderRotationFW = 1004,
      shoulderRotationBW = 1005,
      shoulderShrug = 570,
      chinTuck = 1006,
      headTurns = 1007,
      backNeckStretch = 1010,
      lateralNeckStretchL = 1008,
      lateralNeckStretchR = 1009,
      frontNeckStretch = 1011,
      alternatingBicepCurls = 1012,
      levatorScapulaeStretchL = 1013,
      levatorScapulaeStretchR = 1014,
      neckCirclesCW = 1015,
      neckCirclesCCW = 1016,
      neckHalfCircles = 1017,
      headTilts = 1018,
      quadrupedThoracicRotationL = 1028,
      quadrupedThoracicRotationR = 1029,
      shoulderDislocates = 1081,
      bentOverRowToExternalRotation = 1082,
      ywts = 1083;

  static const headExercises = {
    shoulderRotationFW,
    shoulderRotationBW,
    chinTuck,
    shoulderShrug,
    headTurns,
    backNeckStretch,
    lateralNeckStretchL,
    lateralNeckStretchR,
    frontNeckStretch,
    levatorScapulaeStretchL,
    levatorScapulaeStretchR,
    neckCirclesCW,
    neckCirclesCCW,
    neckHalfCircles,
    headTilts
  };

  static const notAddedToWgerYet = {
    // TODO UPDATE EXERCISES WHEN WGER BUNDLES MORE DEFAULT ONES!
    chairDips
  };
}
