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

import 'package:feeel/components/illustration_widget.dart';
import 'package:feeel/models/editable_workout_exercise.dart';
import 'package:feeel/providers/exercise_provider.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciseEditorRow extends ConsumerWidget {
  final EditableWorkoutExercise editableWorkoutExercise;
  final Widget trailing;
  final Widget? handle;

  const ExerciseEditorRow(
      {Key? key,
      required this.editableWorkoutExercise,
      required this.trailing,
      this.handle})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exerciseAsyncValue = ref.watch(
        //TODO check if I fixed sporadic indefinite loading on workout duplication
        exerciseProvider); //TODO refactor this, I don't think this should be here
    return exerciseAsyncValue.when(
        error: (e, _) => const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Error loading exercise",
              textAlign: TextAlign.center,
            )),
        loading: () => const Padding(
            padding: EdgeInsets.all(16),
            child: CircularProgressIndicator.adaptive()),
        data: (data) {
          final translatedExercise =
              data.translatedExercises[editableWorkoutExercise.exercise]!;
          return Row(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: IllustrationWidget(
                  imageAssetString:
                      AssetUtil.getExerciseThumb(translatedExercise.exercise),
                  flipped: translatedExercise.exercise.imageFlipped,
                  dimension: 72),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                translatedExercise.getName(),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            )),
            trailing,
            handle ??
                Container(
                  width: 16,
                )
          ]);
        });
  }
}
