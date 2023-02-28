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

import 'package:feeel/components/body_container.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/screens/exercise_picker/components/contribute_sheet.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/screens/exercise_picker/components/exercise_picker_row.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:provider/provider.dart';

class ExercisePickerScreen extends StatefulWidget {
  final FeeelSwatch swatch;

  const ExercisePickerScreen({Key? key, required this.swatch})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ExercisePickerScreenState();
  }
}

class _ExercisePickerScreenState extends State<ExercisePickerScreen> {
  List<Exercise>? _exercises;
  final _chosenExerciseIndices = List<int>.empty(growable: true);
  late Future<List<Exercise>> _future;

  @override
  void initState() {
    _future = Provider.of<FeeelDB>(context, listen: false).queryAllExercises;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          tooltip: "Done".i18n,
          onPressed: () {
            if (_exercises != null) {
              List<Exercise> chosenExercises =
                  List.generate(_chosenExerciseIndices.length, (index) {
                return _exercises![_chosenExerciseIndices[index]];
              });
              Navigator.pop(context, chosenExercises);
            }
          },
          child: const Icon(Icons.done),
        ),
        body: FutureBuilder(
            future: _future,
            builder: (context, AsyncSnapshot<List<Exercise>> snapshot) {
              if (snapshot.hasData) {
                _exercises = snapshot.data!;

                return BodyContainer(
                    child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      titleTextStyle: theme.appBarTheme.titleTextStyle
                          ?.copyWith(color: fgColor),
                      title: Text("Add exercises".i18n),
                    ),
                    SliverPadding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 64),
                        sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                          childCount: _exercises!.length + 1,
                          (context, i) {
                            if (i < _exercises!.length) {
                              return ExercisePickerRow(
                                  checked: _chosenExerciseIndices.contains(i),
                                  exercise: _exercises![i],
                                  colorSwatch: widget.swatch,
                                  onChanged: (chosen) {
                                    setState(() {
                                      if (chosen != null && chosen) {
                                        _chosenExerciseIndices.add(i);
                                      } else {
                                        _chosenExerciseIndices.remove(i);
                                      }
                                    });
                                  });
                            } else {
                              return ListTile(
                                leading: Container(
                                    width: 56,
                                    alignment: Alignment.center,
                                    child: const Icon(Icons.add)),
                                title: Text("Propose custom exercise".i18n),
                                onTap: () async {
                                  ContributeSheet.showSheet(context);
                                },
                              );
                            }
                          },
                        )))
                  ],
                ));
              } else {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
            }));
  }
}
