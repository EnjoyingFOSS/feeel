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

import 'package:feeel/components/body_container.dart';
import 'package:feeel/providers/exercise_provider.dart';
import 'package:feeel/screens/exercise_picker/components/contribute_sheet.dart';
import 'package:feeel/screens/exercise_picker/components/exercise_picker_row.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExercisePickerScreen extends ConsumerStatefulWidget {
  final FeeelSwatch swatch;

  const ExercisePickerScreen({Key? key, required this.swatch})
      : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _ExercisePickerScreenState();
  }
}

class _ExercisePickerScreenState extends ConsumerState<ExercisePickerScreen> {
  final _chosenExerciseIds = List<int>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    final exerciseAsyncValue = ref.watch(exerciseProvider);

    final theme = Theme.of(context);
    final bgColor = widget.swatch
        .getColor(FeeelShade.lightest.invertIfDark(theme.brightness));
    final fgColor =
        widget.swatch.getColor(FeeelShade.dark.invertIfDark(theme.brightness));
    return Scaffold(
        backgroundColor: bgColor,
        floatingActionButton: FloatingActionButton(
          foregroundColor: widget.swatch.getColor(FeeelShade.darker),
          backgroundColor: widget.swatch.getForegroundColor(FeeelShade.darker),
          tooltip: AppLocalizations.of(context)!.btnDone,
          onPressed: () {
            Navigator.pop(context, _chosenExerciseIds);
          },
          child: const Icon(Icons.done),
        ),
        body: exerciseAsyncValue.when(
            error: (Object error, StackTrace stackTrace) => Center(
                child:
                    Text(":( There was an error")), //TODO error component !!!
            loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
            data: (data) {
              final translatedExercises =
                  data.translatedExercises.values.toList();
              return BodyContainer(
                  child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    systemOverlayStyle: Theme.of(context)
                        .appBarTheme
                        .systemOverlayStyle
                        ?.copyWith(statusBarColor: bgColor),
                    leading: CloseButton(color: fgColor),
                    titleTextStyle: theme.appBarTheme.titleTextStyle
                        ?.copyWith(color: fgColor),
                    title: Text(AppLocalizations.of(context)!.btnAddExercise),
                  ),
                  SliverPadding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 64),
                      sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                        childCount: translatedExercises.length + 1,
                        (context, i) {
                          if (i < translatedExercises.length) {
                            final exercise = translatedExercises[i].exercise;
                            return ExercisePickerRow(
                                checked: _chosenExerciseIds
                                    .contains(exercise.wgerId),
                                translatedExercise: translatedExercises[i],
                                colorSwatch: widget.swatch,
                                onChanged: (chosen) {
                                  setState(() {
                                    if (chosen != null && chosen) {
                                      _chosenExerciseIds.add(exercise.wgerId);
                                    } else {
                                      _chosenExerciseIds
                                          .remove(exercise.wgerId);
                                    }
                                  });
                                });
                          } else {
                            return ListTile(
                              leading: Container(
                                  width: 56,
                                  alignment: Alignment.center,
                                  child: const Icon(Icons.add)),
                              title: Text(AppLocalizations.of(context)!
                                  .btnAddCustomExerice),
                              onTap: () async {
                                ContributeSheet.showSheet(context);
                              },
                            );
                          }
                        },
                      )))
                ],
              ));
            }));
  }
}
