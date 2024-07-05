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

import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:feeel/db/workout_import_export.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/editable_workout.dart';
import 'package:feeel/screens/workout_editor/workout_editor.dart';
import 'package:feeel/screens/workout_list/providers/workout_list_provider.dart';
import 'package:feeel/utils/snackbar_helper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class WorkoutAddSpeedDial extends ConsumerWidget {
  const WorkoutAddSpeedDial({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SpeedDial(
      icon: Icons.add,
      activeIcon: Icons.close,
      children: [
        SpeedDialChild(
          child: const Icon(Icons.create),
          label: AppLocalizations.of(context)!.btnCreateCustomWorkout,
          onTap: () {
            Navigator.push<void>(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return WorkoutEditorScreen(
                editableWorkout: EditableWorkout(type: WorkoutType.custom),
              );
            }));
          },
        ),
        SpeedDialChild(
            child: const Icon(Icons.upload),
            label: AppLocalizations.of(context)!.txtImportWorkout,
            onTap: () => _importFiles(context, ref))
      ],
    );
  }

  Future<void> _importFiles(BuildContext context, WidgetRef ref) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final l10n = AppLocalizations.of(context)!;

    final screenStateNotifier = ref.read(workoutListProvider.notifier);

    screenStateNotifier.startImporting();

    final pickedFiles = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: true,
        withReadStream: Platform.isLinux);

    if (pickedFiles != null) {
      for (final file in pickedFiles.files) {
        try {
          final imported = await _importFile(context, file, ref);
          if (imported) {
            SnackBarHelper.showInfoSnackBar(
                scaffoldMessenger,
                l10n.txtItemImported.replaceFirst("%s",
                    file.name)); //TODO keep track of imported files, then show one message summarizing import results
          }
        } catch (_) {
          SnackBarHelper.showInfoSnackBar(scaffoldMessenger,
              l10n.txtCouldNotImportItem.replaceFirst("%s", file.name),
              duration: SnackBarDuration.long);
        }
      }
    }
    screenStateNotifier.stopImporting();
  }

  Future<bool> _importFile(
      BuildContext context, PlatformFile file, WidgetRef ref) async {
    final chosenFilePath = file.path;
    final chosenFileExtension = file.extension;

    if (chosenFilePath == null) {
      return false;
    } else {
      final locale = Localizations.localeOf(context);
      if (chosenFileExtension == "zip") {
        final shouldImport = await showDialog<bool>(
                //TODO try catch in case it's a corrupt/invalid file
                context: context,
                builder: (context) => AlertDialog(
                      title: Text(AppLocalizations.of(context)!
                          .txtDuplicateImportTitle),
                      content: Text(
                          AppLocalizations.of(context)!.txtDuplicateImportInfo),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child:
                                Text(AppLocalizations.of(context)!.btnCancel)),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Text(
                                AppLocalizations.of(context)!.btnImportAnyway))
                      ],
                    )) ??
            false;

        if (shouldImport) {
          await WorkoutImportExport.importWorkoutZip(
              InputFileStream(chosenFilePath), ref, locale);
        }

        return shouldImport;
      } else if (chosenFileExtension == "feeel") {
        await WorkoutImportExport.importWorkoutFile(
            File(chosenFilePath), ref, locale);
        return true;
      } else {
        throw ArgumentError("${file.name} has an unsupported file extension.");
      }
    }
  }
}
