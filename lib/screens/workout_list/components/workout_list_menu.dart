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

import 'package:feeel/db/database.dart';
import 'package:feeel/db/workout_import_export.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:feeel/utils/format_util.dart';
import 'package:feeel/utils/snackbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum _WorkoutListAction {
  exportCustom("Export all custom workouts");

  final String translationKey;

  const _WorkoutListAction(this.translationKey);
}

class WorkoutListMenu extends StatelessWidget {
  final Function
      afterAction; //todo this is a hack, remove after moving to riverpod!
  final Function onExportStart; //todo replace with riverpod's providers too!
  final Function onExportEnd; //todo replace with riverpod's providers too!

  const WorkoutListMenu(
      {super.key,
      required this.afterAction,
      required this.onExportStart,
      required this.onExportEnd});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_WorkoutListAction>(
      onSelected: (actionItem) async {
        switch (actionItem) {
          case _WorkoutListAction.exportCustom:
            await _exportZipFile(context);
            return;
        }
      },
      itemBuilder: (_) => _WorkoutListAction.values
          .map((_WorkoutListAction actionItem) =>
              PopupMenuItem<_WorkoutListAction>(
                value: actionItem,
                child: Text(actionItem.translationKey.i18n),
              ))
          .toList(),
    );
  }

  Future<void> _exportZipFile(BuildContext context) async {
    onExportStart();
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final fullCustomWorkouts =
        await Provider.of<FeeelDB>(context, listen: false)
            .queryFullWorkoutsByType(WorkoutType.custom);
    if (fullCustomWorkouts.isEmpty) {
      SnackBarHelper.showInfoSnackBar(
          scaffoldMessenger, "You don't have any custom workouts".i18n);
      onExportEnd();
    } else {
      final zipFilename =
          "${"Feeel ${FormatUtil.getDateTimeStringToSec(DateTime.now())}"}.zip";
      try {
        final exported = await WorkoutImportExport.exportCustomWorkouts(
            fullCustomWorkouts, zipFilename);
        if (exported) {
          SnackBarHelper.showInfoSnackBar(scaffoldMessenger,
              "\"%s\" exported!".i18n.replaceFirst("%s", zipFilename));
        }
      } catch (_) {
        SnackBarHelper.showInfoSnackBar(scaffoldMessenger,
            "Could not export \"%s\".".i18n.replaceFirst("%s", zipFilename),
            duration: SnackBarDuration.long);
      }

      onExportEnd();
    }
  }
}
