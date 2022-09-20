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

import 'package:feeel/db/database.dart';
import 'package:feeel/enums/exercise_type.dart';

class DefaultExercises {
  static const int jumpingJacks = 1,
      wallSit = 2,
      pushUps = 3,
      abCrunches = 4,
      stepUps = 5,
      squats = 6,
      chairDips = 7,
      forearmPlank = 8,
      highKnees = 9,
      lunges = 10,
      pushUpRotations = 11,
      sidePlankL = 12,
      sidePlankR = 13,
      sideSplitSquatsL = 14,
      bulgarianSplitSquatsL = 15,
      bulgarianSplitSquatsR = 16,
      pistolSquatsL = 17,
      pistolSquatsR = 18,
      kneelingKickbacks = 19,
      calfRaisesL = 20,
      calfRaisesR = 21,
      sideSplitSquatsR = 22,
      splitSquatsL = 23,
      splitSquatsR = 24,
      jumpRopeBasic = 25,
      armCirclesFW = 26,
      pikePushUps = 27,
      mountainClimbers = 28,
      fourCountBurpees = 29,
      noPushUpBurpees = 30,
      squatThrusts = 31,
      reverseLunges = 32,
      legRaises = 33,
      florrDips = 34, // v2.2.0
      highPlank = 35,
      armCirclesBW = 36,
      childsPose = 37,
      pullUp = 38,
      kettlebellDeadlift = 39,
      sumoSquat = 40,
      shoulderRotationFW = 41,
      shoulderRotationBW = 42,
      shoulderShrug = 43,
      chinTuck = 44,
      headTurns = 45,
      backNeckStretch = 46, // todo double-check numbers from here onward
      lateralNeckStretchL = 47,
      lateralNeckStretchR = 48,
      frontNeckStretch = 49,
      backAndLateralNeckStretchL = 50,
      backAndLateralNeckStretchR = 51,
      chinTuckWithFlexionWithRotation = 52,
      alternatingBicepCurls = 53,
      levatorScapulaeStretch = 54,
      neckCirclesCW = 55,
      neckCirclesCCW = 56; //todo left and right here?

  static const myDescLicense =
      "English description by Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).";
  static const neckStretchDescLicense =
      "English description by kettenfett and Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).";

  static const sidePlankDesc =
      "1. Lie down on your side, with your bottom elbow at a right angle, arm sticking out\n2. Lift your pelvis off the floor by lifting your bottom shoulder up, keeping the forearm on the floor; your head, pelvis, and feet should be in a straight line\n3. Hold this position";
  static const sidePlankImageLicense =
      "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from Sgt. Thomas Childs's [\"U.S. Marine Corps Sgt. Jonathan Benezette demonstrates the left plank position during Marine Corps martial arts training aboard the dock landing ship USS Oak Hill (LSD 51) during Amphibious-Southern Partnership Station (A-SPS) 2012 in the Caribbean Sea Oct. 9, 2011. SPS is an annual deployment of U.S. ships to the U.S. Southern Command's area of responsibility in the Caribbean and Latin America. The exercise involves information sharing with navies, coast guards and civilian services throughout the region.\"](https://commons.wikimedia.org/wiki/File:U.S._Marine_Corps_Sgt._Jonathan_Benezette_demonstrates_the_left_plank_position_during_Marine_Corps_martial_arts_training_aboard_the_dock_landing_ship_USS_Oak_Hill_(LSD_51)_during_Amphibious-Southern_Partnership_111009-A-WF228-011.jpg), which is in the public domain.";
  static const sideLungeDesc =
      "1. Stand tall and take a wide lateral stride, just greater than shoulder width.\n2. Bend one knee until your thigh is parallel to the floor. The bent knee must be in line with the foot.\n3. Push back to the starting position and repeat.";

  static const bulgarianSquatsDesc =
      "1. Stand tall in front of a chair and take a large step. Put the upper part of one of your feet on the chair.\n2. Bend the front knee, balancing with arms until the back knee almost touches the ground\n3. Push back to the starting position and repeat.";
  static const singleLegCalfRaiseDesc =
      "1. Stand on the floor or on the edge of a step to increase the range of movement. Raise one foot, placing the upper part on your calf.\n2. Lift your heels until you're standing on toes.\n3. Stay in this position for three seconds, then lower your foot without touching the ground with your heel.";
  static const splitSquatsDesc =
      "1. Stand with back straight\n2. Take a large step forward with your left leg\n3. Bring your pelvis down until you almost touch the floor with your right knee\n4. Bring your pelvis back up\n5. Repeat from step 3.";

  static const shoulderRotationDesc =
      "Starting position:\nSit or stand with your back straight.\n\nSteps:\n1. Place your hands on your shoulders.\n2. Repeatedly rotate both shoulder joints in a circular motion at a moderate pace.";

  static const pistolSquatDesc =
      "1. Stand on one leg, with your other leg straight and slightly forward.\n2. Bend one knee slowly, descending into a squat and keeping your back and your other leg straight.\n3. Slowly raise yourself from the squat, straightening the bent knee and keeping the other leg straight.\n4. Repeat";

  static const lateralNeckStretchDesc =
      "Starting position:\nSit or stand with your back straight.\n\nSteps:\n1. Tilt your head to the side and hold for 8 seconds to stretch the side of your neck.\n2. With the closer hand on top of your head, gently pull to stretch further. Hold for 8 seconds.\n3. Turn your chin to your shoulder. Hold for 8 seconds.\n4. Release and return to starting position.";

  static const lateralNeckStretchImageLicense =
      'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"How to do a Lateral Neck Stretch Chin to Shoulder\"](https://www.youtube.com/watch?v=gT6_7GyUsI4) by "Heartmybody Fitness" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).';

  static const backAndLateralNeckStretchDesc =
      "Starting position:\nSit upright on a chair or a firm pillow.\n\nSteps:\n1. Breathe out and tilt head forward, chin to chest, with hands behind your head.\n2. Keeping head forward, use waist muscles to turn as far as comfortable to the left.\n3. Use hands to pull head down very slightly, controlling the stretch.\n4. Draw shoulders back and down using the muscles in your back. Hold for 5 seconds.\n5. Turn back into center position.\n6. Bring your hands to your forehead and push head upright again into normal position.";

  static const backAndLateralNeckStretchImageLicense =
      'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"A Complete Sequence to Stretching Your Neck Muscles | Olivia Allnutt from Stretch Therapy\"](https://www.youtube.com/watch?v=7kqdQSQxtnY) by "Kit Laughlin (Stretch Therapy)" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).';

  static final defaultNoStepExercises = [
    Exercise(
        id: jumpingJacks,
        name: "Jumping jacks",
        description:
            "1. Stand with feet together and arms at the sides\n2. Jump to a position with the legs spread wide and the hands touching overhead\n3. Repeat",
        imageSlug: "exercise_jumpingjacks.webp",
        imageLicense:
            "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from United States Air Force's [\"Top leaders unite for senior enlisted summit\"](http://www.af.mil/News/Photos/igphoto/2000617206/), which is in the public domain.",
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: wallSit,
        name: "Wall sit",
        description:
            "1. Lean against the wall, facing forward and with feet planted firmly on the ground, shoulders width apart and about 2 feet away from the wall\n2. Slide down the wall, keeping the back pressed to it, until legs are at a right angle. The knees should be directly above the ankles\nQuadricep pain is normal, stop if feeling pain in the knee or kneecap",
        imageSlug: "exercise_wallsit.webp",
        imageLicense:
            "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from [\"Fitness Gym Wall Sit Workout Vaughan Gray Fitness\"](http://maxpixel.freegreatpicture.com/Vaughan-Wall-Sit-Workout-Gym-Fitness-2523075) from Max Pixel, published under the [CC0 license](https://creativecommons.org/publicdomain/zero/1.0/).",
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: pushUps,
        name: "Push-ups",
        description:
            "Starting position:\nGet into the starting push-up position, with your hands and toes touching the ground and back, arms and legs straight. To get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.\n\nSteps:\n1. Bend at the elbows until your chest almost touches the ground, making sure your back is straight at all times.\n2. Use your arms to lift yourself back up to starting position.\n3. Repeat.",
        imageSlug: "exercise_pushup.webp",
        imageLicense:
            "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from Keiji Yoshiki's [push-up photo](https://www.pexels.com/photo/adult-athlete-body-exercise-176782/), published under the [CC0 license](https://creativecommons.org/publicdomain/zero/1.0/).",
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: abCrunches,
        name: "Crunches",
        description:
            "1. Lie down face up on the floor with knees bent.\n2. Curl the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest.\n3. Repeat",
        imageSlug: "exercise_abcrunch.webp",
        imageLicense:
            "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from bwanderd's [\"26 Abs 1\"](https://www.flickr.com/photos/86598533@N04/8252254965), published under the [CC BY 2.0 license](https://creativecommons.org/licenses/by/2.0/).",
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: stepUps,
        name: "Step-ups",
        description:
            "1. Stand facing a chair\n2. Step up onto the chair\n3. Step off the chair\n4. Repeat",
        imageSlug: "exercise_stepup.webp",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from [\"Bodyweight Step Up\"](https://www.youtube.com/watch?v=6tuRv_B-tj4) by Heartmybody Fitness on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: squats,
        name: "Squats",
        description:
            "1. Stand with feet shoulder-width apart\n2. Move the hips back and bend the knees and hips to lower the torso\n3. Repeat",
        imageSlug: "exercise_squat.webp",
        imageLicense:
            "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from Vinceypo0's [\"Parallel Squat Form\"](https://commons.wikimedia.org/wiki/File:Parallel_Squat_Form.jpeg), published under the [CC BY-SA 3.0 license](https://creativecommons.org/licenses/by-sa/3.0/deed.en).",
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: chairDips,
        name: "Chair dips",
        description:
            "1. Sit down on the front edge of a chair, back straight, hands holding the front edge\n2. Still holding the edge of the chair, arms extended, lift your butt and walk forward slightly so that it is a few inches from the chair.\n3. Slowly lower your body, keeping the back straight, until arms are at a right angle\n4. Raise your body again to the previous position, arms extended\n5. Repeat steps 3 and 4",
        imageSlug: "exercise_tricepsdip.webp",
        imageLicense:
            "Miroslav Mazel's \"Chair Dips\" is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: forearmPlank,
        name: "Forearm plank",
        description:
            "Starting position:\n1. Start down on all fours.\nArms should bent at a right angle, with shoulders right over elbows.\nBack should be straight, the whole body in a straight line.\n\nSteps:\n1. Hold this position.",
        imageSlug: "exercise_plank.webp",
        imageLicense:
            "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a [plank photo](https://pxhere.com/en/photo/1165192) from PxHere, published under the [CC0 license](https://creativecommons.org/publicdomain/zero/1.0/).",
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: highKnees,
        name: "High knees",
        description:
            "1. Run in place, putting knees as high up as is comfortable and switching legs at a quick pace",
        imageSlug: "exercise_highknees.webp",
        imageLicense:
            "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from US Air Force's [\"RIP It! New running program puts Airmen's best foot forward\"](http://www.barksdale.af.mil/News/Photos/igphoto/2000179280/), which is in the public domain.",
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: lunges,
        name: "Lunges",
        description:
            "1. Stand with back straight\n2. Take a large step forward with your left leg\n3. Bring your pelvis down until you almost touch the floor with your right knee\n4. Bring your pelvis back up\n5. Return to standing position by stepping back\n6. Repeat, switching legs each time",
        imageSlug: "exercise_lunge.webp",
        imageLicense:
            "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from Mass Communication Specialist 2nd Class Brian Morales's [\"U.S. Navy Gas Turbine Systems Technician (Mechanical) 2nd Class Milton Lovelace, left, and Logistics Specialist Seaman Brittney Joseph, both assigned to the Naval Air Station (NAS) Key West port operations department, perform lunges during a physical training session at NAS Key West, Fla., Aug. 28, 2013. The Sailors were preparing for a Navy-wide physical fitness assessment.\"](https://commons.wikimedia.org/wiki/File:U.S._Navy_Gas_Turbine_Systems_Technician_(Mechanical)_2nd_Class_Milton_Lovelace,_left,_and_Logistics_Specialist_Seaman_Brittney_Joseph,_both_assigned_to_the_Naval_Air_Station_(NAS)_Key_West_port_operations_130828-N-YB753-041.jpg), which is in the public domain.",
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: pushUpRotations,
        name: "Push-up rotations",
        description:
            "1. Do a standard push-up:\n1.a Lie down on your stomach\n1.b Place your hands near your ears\n1.c Use your arms to lift your stomach up until the arms are straight, keeping the back straight\n1.d Bend arms until chest almost touches the ground, making sure the back is straight\n1.e Lift your stomach up again, returning to step 3\n2. Rotate your body to the side so that the back is straight, the bottom hand supporting the body is fully extended, and only the bottom hand and foot touch the floor\n3. Repeat, changing sides at step 2 each time",
        imageSlug: "exercise_pushuprotation.webp",
        imageLicense:
            "Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from [\"Woman in Purple Tank Top and Gray Sweat Pants\"](https://www.pexels.com/photo/woman-in-purple-tank-top-and-gray-sweat-pants-163437/) on Pexels, published under the [CC0 license](https://creativecommons.org/publicdomain/zero/1.0/).",
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: sidePlankL,
        name: "Side plank left",
        description: sidePlankDesc,
        imageSlug: "exercise_sideplank.webp",
        imageLicense: sidePlankImageLicense,
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: sidePlankR,
        name: "Side plank right",
        description: sidePlankDesc,
        flipped: true,
        imageSlug: "exercise_sideplank.webp",
        imageLicense: sidePlankImageLicense,
        descLicense: myDescLicense,
        hasSteps: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: sideSplitSquatsL,
        name: "Side split squats left",
        description: sideLungeDesc,
        flipped: true,
        imageSlug: "exercise_sidesplitsquat.webp",
        descLicense:
            "English description by paolo.dev and Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by paolo.dev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
        hasSteps: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: bulgarianSplitSquatsL,
        name: "Bulgarian split squats left",
        description: bulgarianSquatsDesc,
        imageSlug: "exercise_bulgariansplitsquat.webp",
        descLicense:
            "English description by paolo.dev and Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by paolo.dev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: bulgarianSplitSquatsR,
        name: "Bulgarian split squats right",
        description: bulgarianSquatsDesc,
        flipped: true,
        imageSlug: "exercise_bulgariansplitsquat.webp",
        descLicense:
            "English description by paolo.dev and Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by paolo.dev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
        hasSteps: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: pistolSquatsL,
        name: "Pistol squats left",
        description: pistolSquatDesc,
        flipped: true,
        descLicense:
            "English description by paolo.dev and Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageSlug: "exercise_pistolsquat.webp",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by paolo.dev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
        hasSteps: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: pistolSquatsR,
        name: "Pistol squats right",
        description: pistolSquatDesc,
        imageSlug: "exercise_pistolsquat.webp",
        descLicense:
            "English description by paolo.dev and Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by paolo.dev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: kneelingKickbacks,
        name: "Kneeling kickbacks",
        description:
            "1. Get down on all fours.\n2. Push one foot back until fully extended, concentrating on the gluteus muscles.\n3. Stay for one second, then return to the initial position.\n4. Repeat, alternating feet",
        imageSlug: "exercise_kneelingkickback.webp",
        descLicense:
            "English description by paolo.dev and Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by paolo.dev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: calfRaisesL,
        name: "Left leg calf raises",
        description: singleLegCalfRaiseDesc,
        imageSlug: "exercise_singlelegcalfraise.webp",
        descLicense:
            "English description by paolo.dev and Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by paolo.dev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: calfRaisesR,
        name: "Right leg calf raises",
        flipped: true,
        description: singleLegCalfRaiseDesc,
        imageSlug: "exercise_singlelegcalfraise.webp",
        descLicense:
            "English description by paolo.dev and Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by paolo.dev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
        hasSteps: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: sideSplitSquatsR,
        name: "Side split squats right",
        description: sideLungeDesc,
        imageSlug: "exercise_sidesplitsquat.webp",
        descLicense:
            "English description by paolo.dev and Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by paolo.dev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: splitSquatsL,
        name: "Split squats left",
        description: splitSquatsDesc,
        imageSlug: "exercise_splitsquat.webp",
        descLicense:
            "English description by paolo.dev and Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by paolo.dev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: splitSquatsR,
        name: "Split squats right",
        flipped: true,
        description: splitSquatsDesc,
        imageSlug: "exercise_splitsquat.webp",
        descLicense:
            "English description by paolo.dev and Miroslav Mazel is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by paolo.dev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
        hasSteps: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: jumpRopeBasic,
        name: "Jump rope: basic jumps",
        description:
            "Starting position:\nPut your feet close together, bend the knees a bit, keep your head and body straight, keep elbows in, open your arms.\n\nSteps:\n1. Spin only your wrists with enough force to make the rope spin.\n2. Jump just high enough to pass the rope below your feet.\n3. Repeat.\n\nNotes:\nThis exercise requires a jump rope. Make sure the rope length is adjusted to your height. One way to check is to grab both handles with one hand and stand on the middle of the rope hanging on the ground with one foot. If the rope (excluding the handles) reaches just below your chest, its length is right. A shorter rope would be hazardous, as you might hit yourself, and a longer rope would make for bad form.",
        imageSlug: "exercise_jumpropebasic.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by Mohammad H. Tajaddini, which was derived from [\"Jump rope - skipping\"](https://www.flickr.com/photos/90177949@N00/1394676434) by [Drew and Merissa](https://www.flickr.com/photos/90177949@N00), published under the [CC BY 2.0 license](https://creativecommons.org/licenses/by/2.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: armCirclesFW,
        name: "Forward arm circles",
        description:
            "1. Stand up tall with your back straight.\n2. Keeping your arms straight, bring them in front of you, move them down, behind your back, then over your head, and back to the initial position.\n3. Keep circling your arms as described in step 2.",
        imageSlug: "exercise_armcircles_fw.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"Arm Circle to Shoulder Press Down\"](https://www.youtube.com/watch?v=PD3P7zWzzg8) by Heartmybody Fitness on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: pikePushUps,
        name: "Pike push-ups",
        description:
            "Staring position:\nDownward facing dog: Your body should make a V shape, with a straight back, arms, and legs. Your hips should be up in the air.\nYou can get to this position by walking your hands back from a high plank.\n\nSteps:\n1.Bend your elbows to the side, keeping your back and legs straight and moving your head closer to the floor.\n2. Straighten your arms, pushing your hips back up and keeping your back and legs straight.\n3. Repeat.",
        imageSlug: "exercise_pikepushup.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"FULL BODY Bodyweight Workout [NO EQUIPMENT] // School of Calisthenics\"](https://www.youtube.com/watch?v=96X4fYKe3QY) by School of Calisthenics on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: mountainClimbers,
        name: "Mountain climbers",
        description:
            "Starting position:\nStart in the upright push-up position, or the high plank.\nHands should be directly under your shoulders.\nKeep your head in line with your back, facing the floor.\nFeet should be about hip-width apart.\n\nSteps:\n1. Move one knee toward the center of your body, towards your elbows, keeping the other leg extended.\n2. In a quick jumping movement, straighten the bent leg out and pull the other knee toward your body.\n3. Keep repeating step 2, alternating legs.\n\nNotes:\nThroughout the exercise, your back should remain as straight as possible – avoid a hump or a sagging back.",
        imageSlug: "exercise_mountainclimber.webp",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"Mountain Climber\"](https://vimeo.com/149362946) by Dr. Greg Wells on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        descLicense:
            "English description by mondstern, modified by Miroslav Mazel, is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: fourCountBurpees,
        name: "4-count burpees",
        description:
            "Starting position:\nStand straight, feet hip-width apart.\n\nSteps:\n1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.\n2. Keeping your hands on the floor, jump your legs backward into high plank position.\n3. Jump your feet forward to return to the squat position.\n4. Repeat.",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"The 6-Minute Sweat Workout: Burpee\"](https://www.youtube.com/watch?v=sHLu6-liUL0) by ExperienceLifeMag on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        descLicense:
            "English description by mondstern, modified by Miroslav Mazel, is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageSlug: "exercise_4countburpee.webp",
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: noPushUpBurpees,
        name: "No push-up burpees",
        description:
            "Starting position:\nStand straight, feet hip-width apart.\n\nSteps:\n1. Squat low and support yourself on the floor with your hands between the knees and in front of your feet, your back straight.\n2. Keeping your hands on the floor, jump your legs backward into high plank position.\n3. Jump your feet forward to return to the squat position.\n4. Jump up.\n5. Repeat.",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"The 6-Minute Sweat Workout: Burpee\"](https://www.youtube.com/watch?v=sHLu6-liUL0) by ExperienceLifeMag on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        descLicense:
            "English description by mondstern, modified by Miroslav Mazel, is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageSlug: "exercise_nopushupburpee.webp",
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: squatThrusts,
        name: "Squat thrusts",
        description:
            "Starting position:\nStart in high plank position: back, arms, and legs straight and hands shoulder-width apart.\n\nSteps:\n1. Jump your feet forward between your arms, keeping your back flat.\n2. Keeping your hands on the floor, jump your legs back into high plank position.\n3. Repeat.",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"The 6-Minute Sweat Workout: Burpee\"](https://www.youtube.com/watch?v=sHLu6-liUL0) by ExperienceLifeMag on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        descLicense:
            "English description by Miroslav Mazel, derived from a description by mondstern, is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageSlug: "exercise_squatthrust.webp",
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: reverseLunges,
        name: "Reverse lunges",
        description:
            "Starting position:\nStand straight, feet hip-width apart.\n\nSteps:\n1. Step backward with one leg so it can bend comfortably to a 90 degree angle.\n2. Slowly bend both knees to form 90 degree angles.\n3. Return to the starting position.\n4. Repeat, alternating legs.",
        imageSlug: "exercise_reverselunge.webp",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"Fraser Wilson Lower Body Home Workout - NO EQUIPMENT NEEDED | EHPlabs\"](https://www.youtube.com/watch?v=WROyapZyYME) by EHPlabs on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: legRaises,
        name: "Leg raises",
        description:
            "Starting position:\nLie down on your back, feet together, arms by your sides.\n\nSteps:\n1. Bend your knees, then straighten them to point straight up.\n2. Keeping your legs straight, lower them down together without touching the floor. The lower you go, the more intense the exercise.\n3. Raise both legs together to point straight up again.\n4. Repeat from step 2.",
        imageSlug: "exercise_legraise.webp",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"20-Minute At-Home Full-Body Workout | No Equipment\"](https://www.youtube.com/watch?v=1A7pdAKODEU) by "EatMoveRest - The Stanczyks" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: florrDips,
        name: "Floor dips",
        description:
            "Starting position:\nSit with your arms behind you, supporting your back.\nYour fingers should point forward.\nYour knees should be bent, feet together.\n\nSteps:\n1. Raise your hips off the ground, straightening your arms.\n2. Bend your elbows, bringing your hips down.\n3. Straighten your arms, returning to the previous position.\n4. Repeat steps 2 and 3.\n\nNotes:\nThe exercise's difficulty depends on how high you bring your hips.",
        imageSlug: "exercise_floordip.webp",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"20-Minute At-Home Full-Body Workout | No Equipment\"](https://www.youtube.com/watch?v=1A7pdAKODEU) by "EatMoveRest - The Stanczyks" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: highPlank,
        name: "High plank",
        description:
            "Starting position:\nGet into the high plank position: your hands and toes should be touching the ground, your back, arms and legs should be straight.\nTo get to this position, you can lie down on your stomach, place your hands facing down next to your head, and lifting your arms up until they are straight.\n\nSteps:\n1. Maintain the starting position for the entire duration of the exercise.",
        imageSlug: "exercise_highplank.webp",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"The 6-Minute Sweat Workout: Burpee\"](https://www.youtube.com/watch?v=sHLu6-liUL0) by ExperienceLifeMag on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        descLicense: myDescLicense,
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: armCirclesBW,
        name: "Backward arm circles",
        description:
            "1. Stand up tall with your back straight.\n2. Keeping your arms straight, bring them in front of you, raise them over your head, then continue the motion behind your back and down to the initial position.\n3. Keep circling your arms as described in step 2.",
        imageSlug: "exercise_armcircles_bw.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"Arm Circle to Shoulder Press Down\"](https://www.youtube.com/watch?v=PD3P7zWzzg8) by Heartmybody Fitness on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: childsPose,
        name: "Child's pose",
        description:
            "Starting position:\nStart on all fours, knees, toes, and hands touching the ground. Your two big toes should be touching.\n\nSteps:\n1. Move your knees so that they're about hip-width apart.\n2. On an exhale, move your pelvis back to sit on your heels. Your hands should still be touching the ground.\n3. Relax your upper body, lowering your forehead to the floor and letting your hands move forward naturally.\n4. Stay in this pose.\n\nTips:\n* To leave the pose, walk your arms back under your shoulders and move your upper body up into a seated position.",
        imageSlug: "exercise_childspose.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a privately submitted photo by Ali Aliyev, who agreed to license the triangulated version under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: pullUp,
        name: "Pull-ups",
        description:
            "Starting position:\nStart by hanging from the pull-up bar, palms facing away and feet off the floor.\nYour hands should be slightly wider than shoulder-width apart. Only slightly so, so that elbows are still in front of the body rather than squarely to the side.\nYour body should be straight and pointed slightly forward. Your arms should be extended.\n\nSteps:\n1. Use your strength to pull your body up evenly, bringing your chest closer to the pull-up bar and your chin just above it. Do NOT lift yourself up using momentum, such as kicking.\n2. Carefully lower your body back down to starting position.\n3. Repeat.\n\nTips:\n- To do pull-ups correctly, you must first build up strength in several key areas, including shoulders, arms, and abs. Start with pull-ups only after you have built up enough strength with other exercises.",
        imageSlug: "exercise_pullup.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from [\"A US Marine Doing Pull-ups\"](https://commons.wikimedia.org/wiki/File:Marine_Pull-ups.jpg) by "Cpl. C. J. Yard, USMC", published under a public domain license.',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: kettlebellDeadlift,
        name: "Kettlebell deadlifts",
        description:
            "Starting position:\nStand hip-width apart, with your kettlebell centered between your ankles. Your back should be straight, your head facing forward.\n\nSteps:\n1. Hinge at the hips and slightly bend at the knees to put your hands on the kettlebell handles. Your back should be straight as you perform the movement.\n2. Grab the kettlebell handles, with your hands pushing in opposite directions as if to pull the handle apart.\n3. While contacting your abs and glutes, stand straight up.\n4. Hinge at the hips again to bring the kettlebell back down, similarly to step 1.\n5. Repeat from step 3.\n\nTips:\n* Be sure you're performing the movements correctly, as doing otherwise can lead to injury. For example, do not squat instead of hinging at the hips, do not round your back while reaching for the kettlebell, and do not lean back while standing up.",
        imageSlug: "exercise_kettlebelldeadlift.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"Man In Blue Shorts Carrying Brown Exercise Equipments\"](https://www.dreamstime.com/man-blue-shorts-carrying-brown-exercise-equipments-public-domain-image-free-83059944) by creativecommonsstockphotos, published under the [CC0 1.0 license](https://creativecommons.org/publicdomain/zero/1.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: sumoSquat,
        name: "Sumo squats",
        description:
            "Starting position:\nStand with legs wide and toes turned outwards.\n\nSteps:\n1. Slowly sink down by bending your knees out. Reach arms forward. Keep your head, chest and hips in a straight line. Squeeze your glutes.\n2. Push back up into starting position.\n3. Repeat this exercise in a pulsing motion.",
        imageSlug: "exercise_sumosquat.webp",
        descLicense:
            "English description by kettenfett, modified by Miroslav Mazel, is licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"GET SCULPTED LEGS & THIGHS IN 30 DAYS CHALLENGE! Day 18: 100 Tipsy Butterfly! 🦋 #StretchyFit100\"](https://www.youtube.com/watch?v=CbLwLgx6_kw) by Action Jacquelyn on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false,
        type: ExerciseType.fullBody.dbValue),
    Exercise(
        id: shoulderRotationFW,
        name: "Forward shoulder rotation",
        type: ExerciseType.head.dbValue,
        description: shoulderRotationDesc,
        imageSlug: "exercise_shoulderrotation_fw.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"SHOULDERS ROTATION EXERCISE (2020)\"](https://www.youtube.com/watch?v=7kqdQSQxtnY) by "Traditional Martial Arts by Dmitry Prosvirov" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false),
    Exercise(
        id: shoulderRotationBW,
        name: "Backward shoulder rotation",
        type: ExerciseType.head.dbValue,
        description: shoulderRotationDesc,
        imageSlug: "exercise_shoulderrotation_bw.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"SHOULDERS ROTATION EXERCISE (2020)\"](https://www.youtube.com/watch?v=7kqdQSQxtnY) by "Traditional Martial Arts by Dmitry Prosvirov" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false),
    Exercise(
        id: chinTuck,
        name: "Chin tuck",
        type: ExerciseType.head.dbValue,
        description:
            "Starting position:\nSit or stand with your back straight.\n\nSteps:\n1. Use fingers on your chin to slowly tuck your chin in, moving your head back to align it with your spine.\n2. Hold for 5 seconds.\n3. Go back to normal head position and repeat.",
        imageSlug: "exercise_chintuck.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"Home Exercises for Cerivcal Disc Pain | Tim Keeley | Physio REHAB\"](https://www.youtube.com/watch?v=AiTt-zCdluc) by "Physio Fitness | Physio REHAB | Tim Keeley" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false),
    Exercise(
        id: shoulderShrug,
        name: "Shoulder shrugs",
        type: ExerciseType.head.dbValue,
        description:
            "Starting position:\nSit or stand with your back straight.\n\nSteps:\n1. Lift shoulders straight up as far as possible and hold for 5 sec.\n2. Release shoulders back down to a relaxed position.\n3. Repeat.",
        imageSlug: "exercise_shouldershrug.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"Yoga class for shoulder relief\"](https://www.youtube.com/watch?v=H8tUMz9ydUw) by "Stewart Hamblin The Feldenkrais Way" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false),
    Exercise(
        id: headTurns,
        name: "Head turns",
        type: ExerciseType.head.dbValue,
        description:
            "Starting position:\nSit or stand with your back straight and shoulders down.\n\nSteps:\n1. Sit or stand up straight, shoulders dropped.\n2. Turn your head to the side as far as possible. Stop when you hit a barrier and hold for 5 seconds.\n3. Return to center position and repeat, changing sides.",
        imageSlug: "exercise_headturn.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"Jaw-Neck Stretching Exercises | TMJ Exercises and Pain Relief\"](https://www.youtube.com/watch?v=QtH7lQrPoxU) by "Kit Laughlin (Stretch Therapy)" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false),

    ////////

    Exercise(
        id: lateralNeckStretchL,
        name: "Left neck stretch",
        type: ExerciseType.head.dbValue,
        description: lateralNeckStretchDesc,
        descLicense: neckStretchDescLicense,
        flipped: true,
        imageSlug: "exercise_neckstretch_lateral.webp",
        imageLicense: lateralNeckStretchImageLicense,
        hasSteps: false,
        animated: false),

    Exercise(
        id: lateralNeckStretchR,
        name: "Right neck stretch",
        type: ExerciseType.head.dbValue,
        description: lateralNeckStretchDesc,
        descLicense: neckStretchDescLicense,
        imageSlug: "exercise_neckstretch_lateral.webp",
        imageLicense: lateralNeckStretchImageLicense,
        hasSteps: false,
        flipped: false,
        animated: false),

    Exercise(
        id: frontNeckStretch,
        name: "Front neck stretch",
        type: ExerciseType.head.dbValue,
        description:
            "Starting position:\nSit or stand with your back straight.\n\nSteps:\n1. Open mouth wide.\n2. Slowly tilt head back with mouth opened. If you feel the need for support, clasp your hands behind your head.\n3. Very slowly close and open your mouth.\n4. At the end, slowly return to starting position and close mouth.",
        descLicense: neckStretchDescLicense,
        imageSlug: "exercise_neckstretch_front.webp",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"Jaw-Neck Stretching Exercises | TMJ Exercises and Pain Relief\"](https://www.youtube.com/watch?v=QtH7lQrPoxU) by "Kit Laughlin (Stretch Therapy)" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false),

    Exercise(
        id: backAndLateralNeckStretchL,
        name: "Back and left neck stretch",
        type: ExerciseType.head.dbValue,
        flipped: true,
        description: backAndLateralNeckStretchDesc,
        descLicense: neckStretchDescLicense,
        imageSlug: "exercise_neckstretch_back,lateral.webp",
        imageLicense: backAndLateralNeckStretchImageLicense,
        hasSteps: false,
        animated: false),

    Exercise(
        id: backAndLateralNeckStretchR,
        name: "Back and right neck stretch",
        type: ExerciseType.head.dbValue,
        description: backAndLateralNeckStretchDesc,
        descLicense: neckStretchDescLicense,
        imageSlug: "exercise_neckstretch_back,lateral.webp",
        imageLicense: backAndLateralNeckStretchImageLicense,
        hasSteps: false,
        flipped: false,
        animated: false),

    Exercise(
        id: chinTuckWithFlexionWithRotation,
        name: "Chin tuck with flexion with rotation",
        type: ExerciseType.head.dbValue,
        description:
            "Starting position:\nSit or stand with your back straight.\n\nSteps:\n1. Tuck your chin in, moving your head back.\n2. Tilt your head forward until you feel a stretch in the back of your neck.\n3. Rotate your head to the side on exhale. Use fingers on your temples to guide your head and apply a little bit of overpressure.\n4. Hold for 5 seconds.\n5. Rotate back, keeping your head down.\n6. Repeat from step 3, switching sides.",
        descLicense: neckStretchDescLicense,
        imageSlug: "exercise_chintuck+flextion+rotation.webp",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"Suboccipital Muscle Stretch\"](https://www.youtube.com/watch?v=1CIil5SIs7U) by "Connor Naccarato" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        hasSteps: false,
        flipped: false,
        animated: false),

    Exercise(
        id: alternatingBicepCurls,
        name: "Alternating bicep curls",
        type: ExerciseType.fullBody.dbValue,
        description:
            "Starting position:\nStart standing up with dumbbells in each hand, your back straight and feet hip-width apart. Your arms should be relaxed, pointing down. Your knees should be slightly bent, your abs contracted, and your shoulders down.\n\nSteps:\n1. Bend one arm at the elbow, bringing the dumbbell up to your shoulder. Your upper arm should remain motionless during this movement.\n2. Bring the dumbbell back down until your arm is in its original relaxed position.\n3. Repeat, switching arms.",
        descLicense: myDescLicense,
        imageSlug: "exercise_bicepcurl.webp",
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from [\"P3 W1 ex6 Bicep Curls\"](https://www.youtube.com/watch?v=N-nJ3ZMzTzg) by [\"Nick Korderas\"](https://www.youtube.com/channel/UCcf215MCeKPhNEzVlIjjp-w) on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).', //todo replace TBDs
        hasSteps: false,
        flipped: false,
        animated: false),
  ];

  static final defaultStepExercises = [
    Exercise(
        id: backNeckStretch,
        name: "Back neck stretch", //todo or flexion?
        type: ExerciseType.head.dbValue,
        description:
            "Starting position:\nSit upright on a chair or a firm pillow.\n\nSteps:\n1. Breathe out and tilt your head forward, chin to chest, putting hands behind your head.\n2. Use your hands to pull your head down very lightly. Hold for 5 seconds.\n3. Draw shoulders back and down using the muscles in your back. This should increase the neck stretch. Hold for 5 seconds.\n4. Now gently push upward with your head while also pulling it down with your hands. Balance both forces so that your head doesn't move. Hold for at least 5 seconds.\n5. Bring your fingers to your forehead and use them to gently move your head back into original position.",
        imageSlug: "exercise_neckstretch_back.webp",
        descLicense: myDescLicense,
        imageLicense:
            'Licensed under the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/). Derived from a triangulation by kettenfett, which was derived from [\"A Complete Sequence to Stretching Your Neck Muscles | Olivia Allnutt from Stretch Therapy\"](https://www.youtube.com/watch?v=7kqdQSQxtnY) by "Kit Laughlin (Stretch Therapy)" on YouTube, published under the [CC BY 3.0 license](https://creativecommons.org/licenses/by/3.0/legalcode).',
        flipped: false,
        hasSteps: true,
        animated: false)
  ];

  static final defaultSteps = [
    ExerciseStep(
        exercise: backNeckStretch,
        orderPosition: 0,
        stepDuration: 1,
        imageSlug:
            "exercise_neckstretch_back-1.webp"), //todo does this start at 0?
    ExerciseStep(
        exercise: backNeckStretch,
        orderPosition: 1,
        stepDuration: 5,
        imageSlug: "exercise_neckstretch_back.webp"),
    ExerciseStep(
        exercise: backNeckStretch,
        orderPosition: 2,
        stepDuration: 5,
        voiceHint: "Shoulders down"),
    ExerciseStep(
        exercise: backNeckStretch,
        orderPosition: 3,
        stepDuration: 5,
        voiceHint: "Push against hands"),
    ExerciseStep(
        exercise: backNeckStretch,
        orderPosition: 4,
        stepDuration: 1,
        imageSlug: "exercise_neckstretch_back-3.webp")
  ];
}
