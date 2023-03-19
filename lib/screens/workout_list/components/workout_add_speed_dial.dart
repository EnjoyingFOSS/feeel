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

import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:feeel/db/workout_import_export.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:feeel/models/editable_workout.dart';
import 'package:feeel/screens/workout_editor/workout_editor.dart';
import 'package:feeel/screens/workout_list/providers/workout_list_provider.dart';
import 'package:feeel/utils/snackbar_helper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
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
          label: "Create custom workout".i18n,
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
            label: "Import workout(s)".i18n,
            onTap: () => _importFiles(context, ref))
      ],
    );
  }

  Future<void> _importFiles(BuildContext context, WidgetRef ref) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

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
                "\"%s\" imported!".i18n.replaceFirst("%s",
                    file.name)); //todo keep track of imported files, then show one message summarizing import results
          }
        } catch (_) {
          SnackBarHelper.showInfoSnackBar(scaffoldMessenger,
              "Could not import \"%s\".".i18n.replaceFirst("%s", file.name),
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
      if (chosenFileExtension == "zip") {
        final shouldImport = await showDialog<bool>(
                //todo try catch in case it's a corrupt/invalid file
                context: context,
                builder: (context) => AlertDialog(
                      title: Text("Duplicates will not be overriden".i18n),
                      content: Text(
                          "If you import workouts that are identical to workouts you have in Feeel already, you will have those workouts twice in the app and will have to manually delete them."
                              .i18n),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: Text("Cancel".i18n)),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Text("Import anyway".i18n))
                      ],
                    )) ??
            false;

        if (shouldImport) {
          await WorkoutImportExport.importWorkoutZip(
              InputFileStream(chosenFilePath), ref);
        }

        return shouldImport;
      } else if (chosenFileExtension == "feeel") {
        await WorkoutImportExport.importWorkoutFile(File(chosenFilePath), ref);
        return true;
      } else {
        throw ArgumentError("${file.name} has an unsupported file extension.");
      }
    }
  }
}
