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
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:feeel/models/editable_workout.dart';
import 'package:feeel/providers/workout_provider.dart';
import 'package:feeel/screens/workout_editor/workout_editor.dart';
import 'package:feeel/screens/workout_list/providers/workout_list_provider.dart';
import 'package:feeel/utils/snackbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

class WorkoutListItemMenu extends ConsumerWidget {
  final Workout workout;

  const WorkoutListItemMenu({super.key, required this.workout});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerNotifier = ref.read(workoutProvider.notifier);
    return PopupMenuButton<void>(
        itemBuilder: (context) => [
              if (workout.type == WorkoutType.custom)
                PopupMenuItem(
                    child: Text(AppLocalizations.of(context)!.btnEdit),
                    onTap: () => _onEditCustom(context, workout)),
              if (workout.type == WorkoutType.custom)
                PopupMenuItem(
                    child: Text(AppLocalizations.of(context)!.btnDelete),
                    onTap: () =>
                        _onDeleteCustom(context, workout, providerNotifier)),
              PopupMenuItem(
                  child: Text(AppLocalizations.of(context)!.btnDuplicate),
                  onTap: () => _onDuplicate(context, workout)),
              PopupMenuItem(
                  child: Text(AppLocalizations.of(context)!.btnExport),
                  onTap: () => _onExport(context, workout, ref))
            ]);
  }

  void _onDeleteCustom(BuildContext context, Workout workoutListed,
      WorkoutProviderNotifier notifier) {
    // TODO allow an undo !!!
    notifier.deleteWorkout(workoutListed.id);
  }

  void _onEditCustom(BuildContext context, Workout workout) async {
    final navigator = Navigator.of(context);
    final fullWorkout = await GetIt.I<FeeelDB>().queryFullWorkout(workout);
    navigator.push<void>(MaterialPageRoute(
        builder: (context) => WorkoutEditorScreen(
              editableWorkout: EditableWorkout.fromWorkout(fullWorkout),
            )));
  }

  void _onDuplicate(BuildContext context, Workout origWorkout) async {
    final navigator = Navigator.of(context);
    final origFullWorkout =
        await GetIt.I<FeeelDB>().queryFullWorkout(origWorkout);
    final editableCopy = EditableWorkout.fromWorkout(origFullWorkout);
    editableCopy.dbId = null;
    editableCopy.type = WorkoutType.custom;

    navigator.push<void>(MaterialPageRoute(
        builder: (context) => WorkoutEditorScreen(
              editableWorkout: editableCopy,
            )));
  }

  Future<void> _onExport(
      BuildContext context, Workout workout, WidgetRef ref) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final l10n = AppLocalizations.of(context)!;
    final workoutListNotifier = ref.read(workoutListProvider.notifier);

    workoutListNotifier.startExporting();
    final fullWorkout = await GetIt.I<FeeelDB>().queryFullWorkout(workout);
    try {
      final exported = await WorkoutImportExport.exportWorkout(fullWorkout);
      if (exported) {
        SnackBarHelper.showInfoSnackBar(scaffoldMessenger,
            l10n.txtItemExported.replaceFirst("%s", fullWorkout.workout.title));
      }
    } catch (_) {
      SnackBarHelper.showInfoSnackBar(
          scaffoldMessenger,
          l10n.txtCouldNotExportItem
              .replaceFirst("%s", fullWorkout.workout.title),
          duration: SnackBarDuration.long);
    }
    workoutListNotifier.stopExporting();
  }
}
