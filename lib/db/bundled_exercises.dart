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

class BundledExercises {
  // negative numbers represent stuff not in wger yet
  static const int jumpingJacks = 320,
      wallSit = 718,
      pushUps = 482,
      abCrunches = 167,
      stepUps = -5,
      squats = 615,
      chairDips = -7,
      forearmPlank = 458,
      highKnees = -9,
      lunges = -10,
      pushUpRotations = -11,
      sidePlankL = 580,
      sidePlankR = -13,
      sideSplitSquatsL = -14,
      bulgarianSplitSquatsL = -15,
      bulgarianSplitSquatsR = -16,
      pistolSquatsL = 456,
      pistolSquatsR = -18,
      kneelingKickbacks = -19,
      calfRaisesL = 702,
      calfRaisesR = -21,
      sideSplitSquatsR = -22,
      splitSquatsL = -23,
      splitSquatsR = -24,
      jumpRopeBasic = -25,
      armCirclesFW = -26,
      pikePushUps = 454,
      mountainClimbers = -28,
      fourCountBurpees = -29,
      noPushUpBurpees = -30,
      squatThrusts = 616,
      reverseLunges = -32,
      legRaises = 377,
      floorDips = -34, // v2.2.0
      highPlank = -35,
      armCirclesBW = -36,
      childsPose = -37,
      pullUp = 475,
      kettlebellDeadlift = -39,
      sumoSquat = 632,
      shoulderRotationFW = -41,
      shoulderRotationBW = -42,
      shoulderShrug = 570,
      chinTuck = -44,
      headTurns = -45,
      backNeckStretch = -46,
      lateralNeckStretchL = -47,
      lateralNeckStretchR = -48,
      frontNeckStretch = -49,
      alternatingBicepCurls = -50,
      levatorScapulaeStretchL = -51,
      levatorScapulaeStretchR = -52,
      neckCirclesCW = -53,
      neckCirclesCCW = -54,
      neckHalfCircles = -55,
      headTilts = -56;

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
    stepUps,
    chairDips,
    highKnees,
    lunges,
    pushUpRotations,
    sidePlankR,
    sideSplitSquatsL,
    bulgarianSplitSquatsL,
    bulgarianSplitSquatsR,
    pistolSquatsR,
    kneelingKickbacks,
    calfRaisesR,
    sideSplitSquatsR,
    splitSquatsL,
    splitSquatsR,
    jumpRopeBasic,
    armCirclesFW,
    mountainClimbers,
    fourCountBurpees,
    noPushUpBurpees,
    reverseLunges,
    floorDips,
    highPlank,
    armCirclesBW,
    childsPose,
    kettlebellDeadlift,
    shoulderRotationFW,
    shoulderRotationBW,
    chinTuck,
    headTurns,
    backNeckStretch,
    lateralNeckStretchL,
    lateralNeckStretchR,
    frontNeckStretch,
    alternatingBicepCurls,
    levatorScapulaeStretchL,
    levatorScapulaeStretchR,
    neckCirclesCW,
    neckCirclesCCW,
    neckHalfCircles,
    headTilts,
  };
}
