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

import 'package:feeel/db/bundled_exercises.dart';

class DBImageHelper {
  static const _paoloDevLicense =
      'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by paolo.dev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).';
  static const _sidePlankImageLicense =
      "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from Sgt. Thomas Childs's [\"U.S. Marine Corps Sgt. Jonathan Benezette demonstrates the left plank position during Marine Corps martial arts training aboard the dock landing ship USS Oak Hill (LSD 51) during Amphibious-Southern Partnership Station (A-SPS) 2012 in the Caribbean Sea Oct. 9, 2011. SPS is an annual deployment of U.S. ships to the U.S. Southern Command's area of responsibility in the Caribbean and Latin America. The exercise involves information sharing with navies, coast guards and civilian services throughout the region.\"](https://commons.wikimedia.org/wiki/File:U.S._Marine_Corps_Sgt._Jonathan_Benezette_demonstrates_the_left_plank_position_during_Marine_Corps_martial_arts_training_aboard_the_dock_landing_ship_USS_Oak_Hill_(LSD_51)_during_Amphibious-Southern_Partnership_111009-A-WF228-011.jpg), which is in the public domain.";
  static const _lateralNeckStretchImageLicense =
      'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["How to do a Lateral Neck Stretch Chin to Shoulder"](https://www.youtube.com/watch?v=gT6_7GyUsI4) by "Heartmybody Fitness" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).';
  static const _levatorImageLicense =
      'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from ["How to stretch your Levator Scapulae"](https://www.youtube.com/watch?v=Yu4DiooIutk) by ["Spire Injury Clinic"](https://www.youtube.com/c/SpireInjuryClinic) on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).';
  static const _neckCircleLicense =
      'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from ["Neck Circles"](https://www.youtube.com/watch?v=CQlqdL8rok8) by ["Paleo University"](https://www.youtube.com/channel/UCQwF6JMwi_iZKX1DbYrYDWg/featured) on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).';
  static const _burpeeLicense =
      'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["The 6-Minute Sweat Workout: Burpee"](https://www.youtube.com/watch?v=sHLu6-liUL0) by ExperienceLifeMag on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).';
  static const flipped = {
    BundledExercises.sidePlankR,
    BundledExercises.sideSplitSquatsL,
    BundledExercises.bulgarianSplitSquatsR,
    BundledExercises.pistolSquatsL,
    BundledExercises.calfRaisesR,
    BundledExercises.sideSplitSquatsR,
    BundledExercises.lateralNeckStretchL,
    BundledExercises.levatorScapulaeStretchR,
  };
  static const animated = {
    BundledExercises.sideSplitSquatsL,
    BundledExercises.bulgarianSplitSquatsL,
    BundledExercises.bulgarianSplitSquatsR,
    BundledExercises.pistolSquatsL,
    BundledExercises.pistolSquatsR,
    BundledExercises.kneelingKickbacks,
    BundledExercises.calfRaisesL,
    BundledExercises.calfRaisesR,
    BundledExercises.sideSplitSquatsR,
    BundledExercises.splitSquatsL,
    BundledExercises.splitSquatsR,
    BundledExercises.armCirclesFW,
    BundledExercises.pikePushUps,
    BundledExercises.mountainClimbers,
    BundledExercises.fourCountBurpees,
    BundledExercises.noPushUpBurpees,
    BundledExercises.squatThrusts,
    BundledExercises.reverseLunges,
    BundledExercises.legRaises,
    BundledExercises.floorDips,
    BundledExercises.armCirclesBW,
    BundledExercises.shoulderRotationFW,
    BundledExercises.shoulderRotationBW,
    BundledExercises.shoulderShrug,
    BundledExercises.chinTuck,
    BundledExercises.headTurns,
    BundledExercises.backNeckStretch,
    BundledExercises.lateralNeckStretchL,
    BundledExercises.lateralNeckStretchR,
    BundledExercises.frontNeckStretch,
    BundledExercises.levatorScapulaeStretchL,
    BundledExercises.levatorScapulaeStretchR,
    BundledExercises.neckCirclesCW,
    BundledExercises.neckCirclesCCW,
    BundledExercises.neckHalfCircles,
    BundledExercises.headTilts
  };
  static const imageLicenses = <int, String>{
    BundledExercises.jumpingJacks:
        "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from United States Air Force's [\"Top leaders unite for senior enlisted summit\"](http://www.af.mil/News/Photos/igphoto/2000617206/), which is in the public domain.",
    BundledExercises.wallSit:
        "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from [\"Fitness Gym Wall Sit Workout Vaughan Gray Fitness\"](http://maxpixel.freegreatpicture.com/Vaughan-Wall-Sit-Workout-Gym-Fitness-2523075) from Max Pixel, published under the [CC0 license](https://creativecommons.org/publicdomain/zero/1.0/).",
    BundledExercises.pushUps:
        "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from Keiji Yoshiki's [push-up photo](https://www.pexels.com/photo/adult-athlete-body-exercise-176782/), published under the [CC0 license](https://creativecommons.org/publicdomain/zero/1.0/).",
    BundledExercises.abCrunches:
        "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from bwanderd's [\"26 Abs 1\"](https://www.flickr.com/photos/86598533@N04/8252254965), published under the [CC BY 2.0 license](https://creativecommons.org/licenses/by/2.0/).",
    BundledExercises.stepUps:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from ["Bodyweight Step Up"](https://www.youtube.com/watch?v=6tuRv_B-tj4) by Heartmybody Fitness on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.squats:
        "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from Vinceypo0's [\"Parallel Squat Form\"](https://commons.wikimedia.org/wiki/File:Parallel_Squat_Form.jpeg), published under the [CC BY-SA 3.0 license](https://creativecommons.org/licenses/by-sa/3.0/deed.en).",
    BundledExercises.chairDips:
        "Miroslav Mazel's \"Chair Dips\" is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
    BundledExercises.forearmPlank:
        "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a [plank photo](https://pxhere.com/en/photo/1165192) from PxHere, published under the [CC0 license](https://creativecommons.org/publicdomain/zero/1.0/).",
    BundledExercises.highKnees:
        "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from US Air Force's [\"RIP It! New running program puts Airmen's best foot forward\"](http://www.barksdale.af.mil/News/Photos/igphoto/2000179280/), which is in the public domain.",
    BundledExercises.lunges:
        "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from Mass Communication Specialist 2nd Class Brian Morales's [\"U.S. Navy Gas Turbine Systems Technician (Mechanical) 2nd Class Milton Lovelace, left, and Logistics Specialist Seaman Brittney Joseph, both assigned to the Naval Air Station (NAS) Key West port operations department, perform lunges during a physical training session at NAS Key West, Fla., Aug. 28, 2013. The Sailors were preparing for a Navy-wide physical fitness assessment.\"](https://commons.wikimedia.org/wiki/File:U.S._Navy_Gas_Turbine_Systems_Technician_(Mechanical)_2nd_Class_Milton_Lovelace,_left,_and_Logistics_Specialist_Seaman_Brittney_Joseph,_both_assigned_to_the_Naval_Air_Station_(NAS)_Key_West_port_operations_130828-N-YB753-041.jpg), which is in the public domain.",
    BundledExercises.pushUpRotations:
        "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from [\"Woman in Purple Tank Top and Gray Sweat Pants\"](https://www.pexels.com/photo/woman-in-purple-tank-top-and-gray-sweat-pants-163437/) on Pexels, published under the [CC0 license](https://creativecommons.org/publicdomain/zero/1.0/).",
    BundledExercises.sidePlankL: _sidePlankImageLicense,
    BundledExercises.sidePlankR: _sidePlankImageLicense,
    BundledExercises.sideSplitSquatsL: _paoloDevLicense,
    BundledExercises.bulgarianSplitSquatsL: _paoloDevLicense,
    BundledExercises.bulgarianSplitSquatsR: _paoloDevLicense,
    BundledExercises.pistolSquatsL: _paoloDevLicense,
    BundledExercises.pistolSquatsR: _paoloDevLicense,
    BundledExercises.kneelingKickbacks: _paoloDevLicense,
    BundledExercises.calfRaisesL: _paoloDevLicense,
    BundledExercises.calfRaisesR: _paoloDevLicense,
    BundledExercises.sideSplitSquatsR: _paoloDevLicense,
    BundledExercises.splitSquatsL: _paoloDevLicense,
    BundledExercises.splitSquatsR: _paoloDevLicense,
    BundledExercises.jumpRopeBasic:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by Mohammad H. Tajaddini, which was derived from ["Jump rope - skipping"](https://www.flickr.com/photos/90177949@N00/1394676434) by [Drew and Merissa](https://www.flickr.com/photos/90177949@N00), published under the [CC BY 2.0 license](https://creativecommons.org/licenses/by/2.0/legalcode).',
    BundledExercises.armCirclesFW:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["Arm Circle to Shoulder Press Down"](https://www.youtube.com/watch?v=PD3P7zWzzg8) by Heartmybody Fitness on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.pikePushUps:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["FULL BODY Bodyweight Workout [NO EQUIPMENT] // School of Calisthenics"](https://www.youtube.com/watch?v=96X4fYKe3QY) by School of Calisthenics on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.mountainClimbers:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["Mountain Climber"](https://vimeo.com/149362946) by Dr. Greg Wells on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.fourCountBurpees: _burpeeLicense,
    BundledExercises.noPushUpBurpees: _burpeeLicense,
    BundledExercises.squatThrusts: _burpeeLicense,
    BundledExercises.reverseLunges:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["Fraser Wilson Lower Body Home Workout - NO EQUIPMENT NEEDED | EHPlabs"](https://www.youtube.com/watch?v=WROyapZyYME) by EHPlabs on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.legRaises:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["20-Minute At-Home Full-Body Workout | No Equipment"](https://www.youtube.com/watch?v=1A7pdAKODEU) by "EatMoveRest - The Stanczyks" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.floorDips:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["20-Minute At-Home Full-Body Workout | No Equipment"](https://www.youtube.com/watch?v=1A7pdAKODEU) by "EatMoveRest - The Stanczyks" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.highPlank: _burpeeLicense,
    BundledExercises.armCirclesBW:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["Arm Circle to Shoulder Press Down"](https://www.youtube.com/watch?v=PD3P7zWzzg8) by Heartmybody Fitness on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.childsPose:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by Ali Aliyev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
    BundledExercises.pullUp:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from ["A US Marine Doing Pull-ups"](https://commons.wikimedia.org/wiki/File:Marine_Pull-ups.jpg) by "Cpl. C. J. Yard, USMC", published under a public domain license.',
    BundledExercises.kettlebellDeadlift:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["Man In Blue Shorts Carrying Brown Exercise Equipments"](https://www.dreamstime.com/man-blue-shorts-carrying-brown-exercise-equipments-public-domain-image-free-83059944) by creativecommonsstockphotos, published under the [CC0 1.0 license](https://creativecommons.org/publicdomain/zero/1.0/legalcode).',
    BundledExercises.sumoSquat:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["GET SCULPTED LEGS & THIGHS IN 30 DAYS CHALLENGE! Day 18: 100 Tipsy Butterfly! 🦋 #StretchyFit100"](https://www.youtube.com/watch?v=CbLwLgx6_kw) by Action Jacquelyn on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.shoulderRotationFW:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["SHOULDERS ROTATION EXERCISE (2020)"](https://www.youtube.com/watch?v=7kqdQSQxtnY) by "Traditional Martial Arts by Dmitry Prosvirov" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.shoulderRotationBW:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["SHOULDERS ROTATION EXERCISE (2020)"](https://www.youtube.com/watch?v=7kqdQSQxtnY) by "Traditional Martial Arts by Dmitry Prosvirov" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.chinTuck:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["Home Exercises for Cerivcal Disc Pain | Tim Keeley | Physio REHAB"](https://www.youtube.com/watch?v=AiTt-zCdluc) by "Physio Fitness | Physio REHAB | Tim Keeley" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.shoulderShrug:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["Yoga class for shoulder relief"](https://www.youtube.com/watch?v=H8tUMz9ydUw) by "Stewart Hamblin The Feldenkrais Way" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.headTurns:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["Jaw-Neck Stretching Exercises | TMJ Exercises and Pain Relief"](https://www.youtube.com/watch?v=QtH7lQrPoxU) by "Kit Laughlin (Stretch Therapy)" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.backNeckStretch:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["A Complete Sequence to Stretching Your Neck Muscles | Olivia Allnutt from Stretch Therapy"](https://www.youtube.com/watch?v=7kqdQSQxtnY) by "Kit Laughlin (Stretch Therapy)" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.lateralNeckStretchL: _lateralNeckStretchImageLicense,
    BundledExercises.lateralNeckStretchR: _lateralNeckStretchImageLicense,
    BundledExercises.frontNeckStretch:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from ["Jaw-Neck Stretching Exercises | TMJ Exercises and Pain Relief"](https://www.youtube.com/watch?v=QtH7lQrPoxU) by "Kit Laughlin (Stretch Therapy)" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.alternatingBicepCurls:
        'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from ["P3 W1 ex6 Bicep Curls"](https://www.youtube.com/watch?v=N-nJ3ZMzTzg) by ["Nick Korderas"](https://www.youtube.com/channel/UCcf215MCeKPhNEzVlIjjp-w) on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
    BundledExercises.levatorScapulaeStretchL: _levatorImageLicense,
    BundledExercises.levatorScapulaeStretchR: _levatorImageLicense,
    BundledExercises.neckCirclesCW: _neckCircleLicense,
    BundledExercises.neckCirclesCCW: _neckCircleLicense,
    BundledExercises.neckHalfCircles: _neckCircleLicense,
    BundledExercises.headTilts: _lateralNeckStretchImageLicense
  };
  static const slugs = {
    BundledExercises.jumpingJacks: "exercise_jumpingjacks.webp",
    BundledExercises.wallSit: "exercise_wallsit.webp",
    BundledExercises.pushUps: "exercise_pushup.webp",
    BundledExercises.abCrunches: "exercise_abcrunch.webp",
    BundledExercises.stepUps: "exercise_stepup.webp",
    BundledExercises.squats: "exercise_squat.webp",
    BundledExercises.chairDips: "exercise_tricepsdip.webp",
    BundledExercises.forearmPlank: "exercise_plank.webp",
    BundledExercises.highKnees: "exercise_highknees.webp",
    BundledExercises.lunges: "exercise_lunge.webp",
    BundledExercises.pushUpRotations: "exercise_pushuprotation.webp",
    BundledExercises.sidePlankL: "exercise_sideplank.webp",
    BundledExercises.sidePlankR: "exercise_sideplank.webp",
    BundledExercises.sideSplitSquatsL: "exercise_sidesplitsquat.webp",
    BundledExercises.sideSplitSquatsR: "exercise_sidesplitsquat.webp",
    BundledExercises.bulgarianSplitSquatsL: "exercise_bulgariansplitsquat.webp",
    BundledExercises.bulgarianSplitSquatsR: "exercise_bulgariansplitsquat.webp",
    BundledExercises.pistolSquatsL: "exercise_pistolsquat.webp",
    BundledExercises.pistolSquatsR: "exercise_pistolsquat.webp",
    BundledExercises.kneelingKickbacks: "exercise_kneelingkickback.webp",
    BundledExercises.calfRaisesL: "exercise_singlelegcalfraise.webp",
    BundledExercises.calfRaisesR: "exercise_singlelegcalfraise.webp",
    BundledExercises.splitSquatsL: "exercise_splitsquat.webp",
    BundledExercises.splitSquatsR: "exercise_splitsquat.webp",
    BundledExercises.jumpRopeBasic: "exercise_jumpropebasic.webp",
    BundledExercises.armCirclesFW: "exercise_armcircles_fw.webp",
    BundledExercises.pikePushUps: "exercise_pikepushup.webp",
    BundledExercises.mountainClimbers: "exercise_mountainclimber.webp",
    BundledExercises.fourCountBurpees: "exercise_4countburpee.webp",
    BundledExercises.noPushUpBurpees: "exercise_nopushupburpee.webp",
    BundledExercises.squatThrusts: "exercise_squatthrust.webp",
    BundledExercises.reverseLunges: "exercise_reverselunge.webp",
    BundledExercises.legRaises: "exercise_legraise.webp",
    BundledExercises.floorDips: "exercise_floordip.webp",
    BundledExercises.highPlank: "exercise_highplank.webp",
    BundledExercises.armCirclesBW: "exercise_armcircles_bw.webp",
    BundledExercises.childsPose: "exercise_childspose.webp",
    BundledExercises.pullUp: "exercise_pullup.webp",
    BundledExercises.kettlebellDeadlift: "exercise_kettlebelldeadlift.webp",
    BundledExercises.sumoSquat: "exercise_sumosquat.webp",
    BundledExercises.shoulderRotationFW: "exercise_shoulderrotation_fw.webp",
    BundledExercises.shoulderRotationBW: "exercise_shoulderrotation_bw.webp",
    BundledExercises.shoulderShrug: "exercise_shouldershrug.webp",
    BundledExercises.chinTuck: "exercise_chintuck.webp",
    BundledExercises.headTurns: "exercise_headturn.webp",
    BundledExercises.backNeckStretch: "exercise_neckstretch_back.webp",
    BundledExercises.lateralNeckStretchL: "exercise_neckstretch_lateral.webp",
    BundledExercises.lateralNeckStretchR: "exercise_neckstretch_lateral.webp",
    BundledExercises.frontNeckStretch: "exercise_neckstretch_front.webp",
    BundledExercises.alternatingBicepCurls: "exercise_bicepcurl.webp",
    BundledExercises.levatorScapulaeStretchL:
        "exercise_levatorscapulaestretch.webp",
    BundledExercises.levatorScapulaeStretchR:
        "exercise_levatorscapulaestretch.webp",
    BundledExercises.neckCirclesCW: "exercise_neckcircles_cw.webp",
    BundledExercises.neckCirclesCCW: "exercise_neckcircles_ccw.webp",
    BundledExercises.neckHalfCircles: "exercise_neckhalfcircles.webp",
    BundledExercises.headTilts: "exercise_headtilts.webp"
  };
}
