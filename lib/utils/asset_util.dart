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
import 'package:path/path.dart';

class _PathUtil {
  static const assetDir = "assets";
  static const imageSubdir = "images";
  static const exerciseImageSubdir = "exercise_images";
  static const exerciseThumbSubdir = "exercise_thumbs";
  static const jsonSubdir = "json";
  static const jsonSupplementsSubdir = "json_supplements";
  static const soundSubdir = "sounds";
  static const placeholderFilename = "_placeholder.webp";
}

enum WikiJsonAsset {
  exercises("exercisebaseinfo.json");
  // TODO redirects("deletion-log.json");

  final String _filename;

  const WikiJsonAsset(this._filename);

  String getPath() => join(_PathUtil.assetDir, _PathUtil.jsonSubdir, _filename);
}

enum SupplementJsonAsset {
  exerciseImages("local_exercise_images.json");

  final String _filename;

  const SupplementJsonAsset(this._filename);

  String getPath() =>
      join(_PathUtil.assetDir, _PathUtil.jsonSupplementsSubdir, _filename);
}

enum SoundAsset {
  breakTime("break.mp3"),
  exercise("exercise.mp3"),
  finish("finish.mp3"),
  tick("tick.mp3");

  final String _filename;

  const SoundAsset(this._filename);

  String getPath() =>
      join(_PathUtil.assetDir, _PathUtil.soundSubdir, _filename);
}

enum ImageAsset {
  icon("icon.png"),
  imageCoach("image_coach.webp"),
  imageSuccess("image_success.png"),
  imageVolunteerHeart("image_volunteer_heart.webp"),
  wgerLogo("wger-logo.webp");

  final String _filename;

  const ImageAsset(this._filename);

  String getPath() =>
      join(_PathUtil.assetDir, _PathUtil.imageSubdir, _filename);
}

// TODO chairDips has no wiki ID yet!!!
class AssetUtil {
  static String getExerciseThumb(Exercise exercise) => join(
      _PathUtil.assetDir,
      _PathUtil.exerciseThumbSubdir,
      exercise.imageSlug != null
          ? "${exercise.imageSlug}.webp"
          : _PathUtil.placeholderFilename);

  static String getExerciseImage(Exercise exercise) => join(
      _PathUtil.assetDir,
      _PathUtil.exerciseImageSubdir,
      exercise.imageSlug != null
          ? "${exercise.imageSlug}.webp"
          : _PathUtil.placeholderFilename);
}
