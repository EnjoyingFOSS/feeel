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

import 'package:feeel/db/database.dart';
import 'package:feeel/db/workout_import_export.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/editable_workout.dart';
import 'package:feeel/providers/db_provider.dart';
import 'package:feeel/providers/workout_provider.dart';
import 'package:feeel/screens/workout_editor/workout_editor.dart';
import 'package:feeel/screens/workout_list/providers/workout_list_provider.dart';
import 'package:feeel/utils/snackbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutListItemMenu extends ConsumerWidget {
  final Workout workout;

  const WorkoutListItemMenu({super.key, required this.workout});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<void>(
        itemBuilder: (context) => [
              if (workout.type == WorkoutType.custom)
                PopupMenuItem(
                    child: Text(AppLocalizations.of(context)!.btnEdit),
                    onTap: () => _onEditCustom(context, workout, ref)),
              if (workout.type == WorkoutType.custom)
                PopupMenuItem(
                    child: Text(AppLocalizations.of(context)!.btnDelete),
                    onTap: () => _onDeleteCustom(context, workout, ref)),
              PopupMenuItem(
                  child: Text(AppLocalizations.of(context)!.btnDuplicate),
                  onTap: () => _onDuplicate(context, workout, ref)),
              PopupMenuItem(
                  child: Text(AppLocalizations.of(context)!.btnExport),
                  onTap: () => _onExport(context, workout, ref))
            ]);
  }

  void _onDeleteCustom(
      BuildContext context, Workout workoutListed, WidgetRef ref) async {
    final providerNotifier = ref.read(workoutProvider.notifier);
    // TODO allow an undo !!!
    await providerNotifier.deleteWorkout(workoutListed.id);
  }

  void _onEditCustom(
      BuildContext context, Workout workout, WidgetRef ref) async {
    final db = ref.read(dbProvider);
    final navigator = Navigator.of(context);
    final fullWorkout =
        await db.queryFullWorkout(workout, Localizations.localeOf(context));
    navigator.push<void>(MaterialPageRoute(
        builder: (context) => WorkoutEditorScreen(
              editableWorkout: EditableWorkout.fromWorkout(fullWorkout),
            )));
  }

  void _onDuplicate(
      BuildContext context, Workout origWorkout, WidgetRef ref) async {
    final db = ref.read(dbProvider);
    final locale = Localizations.localeOf(context);
    final navigator = Navigator.of(context);
    final origFullWorkout = await db.queryFullWorkout(origWorkout, locale);
    final editableCopy = EditableWorkout.fromWorkout(origFullWorkout);
    editableCopy.title = editableCopy.getTranslatedTitle(
        locale); // this is temporary, until the editor allows editing translations
    editableCopy.dbId = null;
    editableCopy.type = WorkoutType.custom;

    navigator.push<void>(MaterialPageRoute(
        builder: (context) => WorkoutEditorScreen(
              editableWorkout: editableCopy,
            )));
  }

  Future<void> _onExport(
      BuildContext context, Workout workout, WidgetRef ref) async {
    final db = ref.read(dbProvider);
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final l10n = AppLocalizations.of(context)!;
    final workoutListNotifier = ref.read(workoutListProvider.notifier);

    workoutListNotifier.startExporting();
    final fullWorkout =
        await db.queryFullWorkout(workout, Localizations.localeOf(context));
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
