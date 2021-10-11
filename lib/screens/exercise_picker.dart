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

import 'package:feeel/db/db_helper.dart';
import 'package:feeel/models/view/exercise.dart';
import 'package:feeel/screens/exercise_creator.dart';
import 'package:feeel/theming/feeel_colors.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/widgets/exercise_picker_row.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

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
  List<int> _chosenExerciseIndices = List.empty(growable: true);
  late Future<List<Exercise>> _future;

  @override
  void initState() {
    _future = DBHelper.db.queryExercises();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bgColor = widget.swatch
        .getColorByBrightness(FeeelShade.LIGHTEST, theme.brightness);
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: bgColor,
          titleTextStyle: theme.appBarTheme.titleTextStyle?.copyWith(
              color: widget.swatch
                  .getColorByBrightness(FeeelShade.DARK, theme.brightness)),
          iconTheme: theme.iconTheme,
          title: Text("Add exercises".i18n),
        ),
        floatingActionButton: FloatingActionButton(
          foregroundColor: widget.swatch.getColor(FeeelShade.DARKER),
          backgroundColor: Colors.white,
          child: Icon(Icons.done),
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
        ),
        body: FutureBuilder(
            future: _future,
            builder: (context, AsyncSnapshot<List<Exercise>> snapshot) {
              if (snapshot.hasData) {
                _exercises = snapshot.data!;

                return ListView.builder(
                    //todo add itemExtent here, but test for responsiveness
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 64),
                    itemCount: _exercises!.length + 1,
                    itemBuilder: (context, i) {
                      if (i < _exercises!.length) {
                        return ExercisePickerRow(
                            checked: _chosenExerciseIndices.contains(i),
                            exercise: _exercises![i],
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
                              child: Icon(Icons.add)),
                          title: Text("Propose custom exercise".i18n),
                          onTap: () {
                            Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ExerciseCreatorScreen(),
                                    fullscreenDialog: true));
                          },
                        );
                      }
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
