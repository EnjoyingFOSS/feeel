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

import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:archive/archive_io.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/editable_workout.dart';
import 'package:feeel/models/feeel_workout_json.dart';
import 'package:feeel/models/full_workout.dart';
import 'package:feeel/providers/workout_provider.dart';
import 'package:feeel/utils/format_util.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class WorkoutImportExport {
  static const _tempDirParentName = "temp";

  static Future<Directory> _createNowTempDirectory() async {
    final tempDir = Directory(p.join(
        (await getApplicationSupportDirectory()).path, _tempDirParentName));
    if (!(await tempDir.exists())) {
      await tempDir.create();
    }

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final todayDirName = FormatUtil.getDateString(today);
    final yesterdayDirName = FormatUtil.getDateString(yesterday);

    // delete old temp directories
    for (final fileOrDir in tempDir.listSync()) {
      //TODO this always leaves a temp directory for one or two days; ideally, delete all automatically, outside the import / export process
      final filename = p.basename(fileOrDir.path);
      if (filename != todayDirName && filename != yesterdayDirName) {
        fileOrDir.delete(recursive: true);
      }
    }

    // create new temporary directory
    final nowTempDir = Directory(p.joinAll([
      tempDir.path,
      todayDirName,
      "temp${now.microsecondsSinceEpoch.toString()}"
    ]));
    await nowTempDir.create(recursive: true);
    return nowTempDir;
  }

  /// returns true if successfully exported, false if export cancelled
  static Future<bool> exportCustomWorkouts(
      List<FullWorkout> fullCustomWorkouts, String zipFilename) async {
    final tempZipDir = await _createNowTempDirectory();

    final workoutFiles = <File>[
      for (final workout in fullCustomWorkouts)
        await _createWorkoutFile(workout, tempZipDir)
    ];

    final tempOutputDir = await _createNowTempDirectory();

    final zipPath = p.join(tempOutputDir.path, zipFilename);

    final encoder = ZipFileEncoder();
    encoder.create(zipPath);
    for (final file in workoutFiles) {
      await encoder.addFile(file);
    }
    encoder.close();

    final zipFile = File(zipPath);

    tempZipDir.delete(recursive: true);

    return await _shareOrSaveFile(zipFile, zipFilename);
  }

  /// returns true if successfully exported, false if export cancelled
  static Future<bool> exportWorkout(FullWorkout fullWorkout) async {
    final tempOutputFile =
        await _createWorkoutFile(fullWorkout, await _createNowTempDirectory());

    return await _shareOrSaveFile(tempOutputFile,
        _getWorkoutFilename(fullWorkout.workout.title, fullWorkout.workout.id));
  }

  static Future<File> _createWorkoutFile(
      FullWorkout fullWorkout, Directory dir) async {
    final exportedString = jsonEncode(FeeelWorkoutJson(
            exerciseDbUtcImportDate: FeeelDB.bundledExerciseImportDate,
            fullWorkout: fullWorkout)
        .toJson());

    final filePath = File(p.join(
        dir.path,
        _getWorkoutFilename(
            fullWorkout.workout.title, fullWorkout.workout.id)));

    return await filePath.writeAsString(exportedString);
  }

  static String _getWorkoutFilename(String workoutTitle, int workoutId) =>
      "${FormatUtil.getSafeLatinFilename(workoutTitle)}_$workoutId.feeel";

  /// returns true if successfully exported, false if export cancelled
  static Future<bool> _shareOrSaveFile(
      File exportedFile, String filename) async {
    if (Platform.isMacOS || Platform.isLinux) {
      final outputFile = await FilePicker.platform.saveFile(
        dialogTitle: "",
        fileName: filename,
      );
      if (outputFile == null) {
        return false;
      } else {
        await exportedFile.copy(outputFile);
        return true;
      }
    } else {
      final shareResult =
          await Share.shareXFiles([XFile(exportedFile.path, name: filename)]);
      switch (shareResult.status) {
        case ShareResultStatus.success:
          return true;
        case ShareResultStatus.dismissed:
          return false;
        case ShareResultStatus.unavailable:
          throw StateError("Unavailable share result status");
      }
    }
  }

  static Future<void> importWorkoutZip(
      InputFileStream readStream, WidgetRef ref, Locale locale) async {
    final archive = ZipDecoder().decodeBuffer(readStream);

    for (final file in archive.files) {
      if (file.isFile) {
        await _importWorkout(
            utf8.decode(file.content as List<int>), ref, locale);
      }
    }
  }

  static Future<void> importWorkoutFile(
      File feeelFile, WidgetRef ref, Locale locale) async {
    await _importWorkout(await feeelFile.readAsString(), ref, locale);
  }

  static Future<void> _importWorkout(
      String jsonContent, WidgetRef ref, Locale locale) async {
    final decodedJson = jsonDecode(jsonContent) as Map<String, dynamic>;
    final feeelJsonWorkout =
        await FeeelWorkoutJson.fromJson(decodedJson, locale, ref);

    if (feeelJsonWorkout.exerciseDbUtcImportDate
        .isAfter(FeeelDB.bundledExerciseImportDate)) {
      throw Exception(
          "The imported file's source exercise database is newer than this app's database."); // TODO communicate this error to the user too!
    }

    final ew = EditableWorkout.fromWorkout(feeelJsonWorkout.fullWorkout);
    ew.dbId = null;
    ew.type = WorkoutType.custom;

    final workoutNotifier = ref.read(workoutProvider.notifier);
    await workoutNotifier.createOrUpdateWorkout(ew);
  }
}
