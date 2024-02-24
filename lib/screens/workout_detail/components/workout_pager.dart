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

import 'dart:async';
import 'dart:io';

import 'package:feeel/controllers/workout_controller.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/models/full_workout.dart';
import 'package:feeel/providers/db_provider.dart';
import 'package:feeel/screens/workout_detail/components/exercise_page.dart';
import 'package:feeel/screens/workout_detail/components/finish_page.dart';
import 'package:feeel/screens/workout_detail/components/workout_cover.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wakelock/wakelock.dart';

enum _WorkoutPageTypes { cover, exercise, finish }

class WorkoutPager extends ConsumerStatefulWidget {
  //TODO convert to StatelessWidget, get rid of the l10n argument
  final FullWorkout fullWorkout;
  final FeeelSwatch colorSwatch;
  final AppLocalizations l10n;

  const WorkoutPager(
      {Key? key,
      required this.fullWorkout,
      required this.colorSwatch,
      required this.l10n})
      : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _WorkoutPagerState();
  }
}

class _WorkoutPagerState extends ConsumerState<WorkoutPager> {
  final _pageController = PageController();
  late FeeelDB _db;
  late WorkoutController _workoutController;

  @override
  void initState() {
    super.initState();
    _db = ref.read(dbProvider);
    _workoutController = WorkoutController(widget.fullWorkout, widget.l10n);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (widget.fullWorkout.workoutExercises.isNotEmpty) {
      unawaited(precacheImage(
          Image.asset(AssetUtil.getExerciseImage(
                  widget.fullWorkout.translatedExercises.first.exercise))
              .image, //TODO precache inside workout page instead?
          context));
    }
  }

  @override
  Widget build(BuildContext context) {
    _workoutController.setOnFinish(() {
      if (!Platform.isLinux) Wakelock.disable();
      _pageController.jumpToPage(_WorkoutPageTypes.finish.index);
    });

    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: <Widget>[
        WorkoutCover(
          fullWorkout: widget.fullWorkout,
          colorSwatch: widget.colorSwatch,
          startWorkout: () {
            _pageController.jumpToPage(_WorkoutPageTypes.exercise.index);
            _workoutController.start();
            if (!Platform.isLinux) Wakelock.enable(); //
          },
        ),
        ExercisePage(
            workoutController: _workoutController,
            fullWorkout: widget.fullWorkout,
            colorSwatch: widget.colorSwatch),
        FinishPage(
          color: widget.colorSwatch.getColor(
              FeeelShade.dark.invertIfDark(Theme.of(context).brightness)),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _workoutController.recordState(_db);
    _workoutController.close();
  }
}
