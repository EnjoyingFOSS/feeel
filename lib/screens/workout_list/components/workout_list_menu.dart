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

import 'package:feeel/db/workout_import_export.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/providers/db_provider.dart';
import 'package:feeel/screens/workout_list/providers/workout_list_provider.dart';
import 'package:feeel/utils/format_util.dart';
import 'package:feeel/utils/snackbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutListMenu extends ConsumerWidget {
  const WorkoutListMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<void>(
        itemBuilder: (_) => [
              PopupMenuItem(
                  child: Text(
                      AppLocalizations.of(context)!.txtExportCustomWorkouts),
                  onTap: () => _exportZipFile(context, ref))
            ]);
  }

  Future<void> _exportZipFile(BuildContext context, WidgetRef ref) async {
    final workoutListNotifier = ref.read(workoutListProvider.notifier);
    final db = ref.read(dbProvider);

    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final l10n = AppLocalizations.of(context)!;

    workoutListNotifier.startExporting();
    final fullCustomWorkouts = await db.queryFullWorkoutsByType(
        WorkoutType.custom, Localizations.localeOf(context));
    if (fullCustomWorkouts.isEmpty) {
      SnackBarHelper.showInfoSnackBar(
          scaffoldMessenger, l10n.txtNoCustomWorkouts);
    } else {
      final zipFilename =
          "${"Feeel ${FormatUtil.getDateTimeStringToSec(DateTime.now())}"}.zip";
      try {
        final exported = await WorkoutImportExport.exportCustomWorkouts(
            fullCustomWorkouts, zipFilename);
        if (exported) {
          SnackBarHelper.showInfoSnackBar(scaffoldMessenger,
              l10n.txtItemExported.replaceFirst("%s", zipFilename));
        }
      } catch (_) {
        SnackBarHelper.showInfoSnackBar(scaffoldMessenger,
            l10n.txtCouldNotExportItem.replaceFirst("%s", zipFilename),
            duration: SnackBarDuration.long);
      }
    }
    workoutListNotifier.stopExporting();
  }
}
