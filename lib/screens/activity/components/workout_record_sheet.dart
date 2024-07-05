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

import 'package:feeel/components/exercise_list_item.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/models/full_workout_record.dart';
import 'package:feeel/providers/db_provider.dart';
import 'package:feeel/screens/activity/components/workout_record_row.dart';
import 'package:feeel/theming/feeel_grid.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutRecordSheet extends ConsumerWidget {
  static const _translucentGrayscaleColorFilter = ColorFilter.matrix([
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0,
    0,
    0,
    0.25,
    0,
  ]);

  final WorkoutRecord workoutRecord;
  final FeeelSwatch colorSwatch;

  const WorkoutRecordSheet(
      {super.key, required this.workoutRecord, required this.colorSwatch});

  static void showSheet(BuildContext context, WorkoutRecord workoutRecord,
      FeeelSwatch colorSwatch) {
    showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        isDismissible: true,
        builder: (_) => WorkoutRecordSheet(
              workoutRecord: workoutRecord,
              colorSwatch: colorSwatch,
            ));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final db = ref.read(dbProvider);
    return DraggableScrollableSheet(
        expand: false,
        builder: (context, scrollController) {
          return Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: LayoutXL.cols8.width),
                  child: FutureBuilder(
                      future: db.queryFullWorkoutRecord(
                          workoutRecord, Localizations.localeOf(context)),
                      builder: (_, snapshot) {
                        if (snapshot.hasData) {
                          final fullWorkoutRecord =
                              snapshot.data as FullWorkoutRecord;
                          return CustomScrollView(
                            shrinkWrap: true,
                            controller: scrollController,
                            physics: const ClampingScrollPhysics(),
                            slivers: [
                              SliverToBoxAdapter(
                                  child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 8, 0, 16),
                                      child: WorkoutRecordRow(
                                          workoutRecord, colorSwatch))),
                              SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                      childCount: fullWorkoutRecord
                                          .translatedExercises.length, (_, i) {
                                final fe =
                                    fullWorkoutRecord.translatedExercises[i];
                                final wer =
                                    fullWorkoutRecord.workoutExerciseRecords[i];
                                if (wer.completedDuration == 0) {
                                  return ExerciseListItem(
                                    translatedExercise: fe,
                                    subtitle: Text(
                                      AppLocalizations.of(context)!
                                          .txtTimeCompletedOutOfTotal(
                                              "${wer.completedDuration}",
                                              AppLocalizations.of(context)!
                                                  .txtDurationFormatSec(wer
                                                      .exerciseDuration
                                                      .toString())),
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface
                                              .withAlpha(128)),
                                    ),
                                    colorSwatch: colorSwatch,
                                    colorFilter:
                                        _translucentGrayscaleColorFilter,
                                  );
                                } else {
                                  return ExerciseListItem(
                                      translatedExercise: fe,
                                      subtitle: Text(
                                          AppLocalizations.of(context)!
                                              .txtTimeCompletedOutOfTotal(
                                                  "${wer.completedDuration}",
                                                  AppLocalizations.of(context)!
                                                      .txtDurationFormatSec(wer
                                                          .exerciseDuration
                                                          .toString()))),
                                      colorSwatch: colorSwatch);
                                }
                              }))
                            ],
                          );
                        } else {
                          return Container(
                              alignment: Alignment.center,
                              height: 72,
                              child:
                                  const CircularProgressIndicator.adaptive());
                        }
                      })));
        });
  }
}
