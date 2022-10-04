// // Copyright (C) 2019 Miroslav Mazel
// //
// // This file is part of Feeel.
// //
// // Feeel is free software: you can redistribute it and/or modify
// // it under the terms of the GNU Affero General Public License as published by
// // the Free Software Foundation, either version 3 of the License, or
// // (at your option) any later version. As an additional permission under
// // section 7, you are allowed to distribute the software through an app
// // store, even if that store has restrictive terms and conditions that
// // are incompatible with the AGPL, provided that the source is also
// // available under the AGPL with or without this permission through a
// // channel without those restrictive terms and conditions.
// //
// // Feeel is distributed in the hope that it will be useful,
// // but WITHOUT ANY WARRANTY; without even the implied warranty of
// // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// // GNU Affero General Public License for more details.
// //
// // You should have received a copy of the GNU Affero General Public License
// // along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

// import 'dart:convert';
// import 'dart:io';

// import 'package:archive/archive_io.dart';
// import 'package:feeel/db/db_helper.dart';
// import 'package:feeel/db/json_metadata.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart' as p;

// import '../models/view/workout.dart';

// class WorkoutImportExport {
//   //todo test
//   static const _exportDirPrefix = "EXPORT_";
//   static const _importDirPrefix = "IMPORT_";

//   static const _metadataFilename = "metadata.json";

//   static Future<File> exportWorkouts(List<Workout> workouts) async {
//     final appSupportDir = await getApplicationSupportDirectory();
//     final tempDir = Directory(p.join(appSupportDir.path,
//         "$_exportDirPrefix${DateTime.now().millisecondsSinceEpoch}"));
//     await tempDir.create();

//     final workoutFiles = <File>[
//       for (final workout in workouts)
//         await _generateWorkoutFile(workout, tempDir)
//     ];

//     final metaFile = File(p.join(tempDir.path, _metadataFilename));
//     final metaContent = jsonEncode(JSONMetadata().toJson());
//     await metaFile.writeAsString(metaContent);

//     final zipFile = p.join(appSupportDir.path,
//         "$_exportDirPrefix${DateTime.now().millisecondsSinceEpoch}.feeel");

//     final encoder = ZipFileEncoder();
//     encoder.create(zipFile);
//     encoder.addFile(metaFile);
//     for (final file in workoutFiles) {
//       encoder.addFile(file);
//     }
//     encoder.close();

//     return File(zipFile);
//   }

//   static Future<File> _generateWorkoutFile(
//       Workout workout, Directory tempDir) async {
//     final exportedString = jsonEncode(workout.toJson());
//     // print(exportedString);

//     final workoutPath = File(
//         p.join(tempDir.path, "${workout.type.index}_${workout.dbId}.json"));

//     return await workoutPath.writeAsString(exportedString);
//   }

//   static void importWorkouts(InputFileStream readStream) async {
//     final appSupportDir = await getApplicationSupportDirectory();
//     final tempDir = Directory(p.join(appSupportDir.path,
//         "$_importDirPrefix${DateTime.now().millisecondsSinceEpoch}"));
//     await tempDir.create();

//     final archive = ZipDecoder().decodeBuffer(readStream);

//     final metadataFile = archive.files.firstWhere(
//         (file) => file.name == _metadataFilename,
//         orElse: () => throw Exception(
//             "This file does not contain the requisite metadata."));

//     final metadata = JSONMetadata.fromJson(
//         jsonDecode(utf8.decode(metadataFile.content as List<int>))
//             as Map<String, dynamic>);

//     for (final file in archive.files) {
//       if (file.isFile) {
//         if (file.name == _metadataFilename) continue;

//         final json = jsonDecode(utf8.decode(file.content as List<int>))
//             as Map<String, dynamic>;
//         final workout = await Workout.fromJson(json, metadata);

//         // print("Creating $workout");

//         DBHelper.db.createOrUpdateCustomWorkout(
//             workout); //todo workout list not updating on return from settings!!!
//       }
//     }
//   }
// }
