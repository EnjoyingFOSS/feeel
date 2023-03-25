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

import 'package:path/path.dart' as p;

class AssetUtil {
  static const _assetsDir = "assets";
  static const _thumbsPrefix = "thumbs_";
  static const _placeholderAsset = "placeholder.webp";
  static const _fullPlaceholderPath =
      "$_assetsDir/$_placeholderAsset"; // hard-coded path
  static const _fullPlaceholderThumbsPath =
      "$_assetsDir/$_thumbsPrefix$_placeholderAsset"; // hard-coded path
  static const _fullExercisesPath =
      "$_assetsDir/exercises.json"; // hard-coded path

  static String getImageOrPlaceholderPath(String? imageSlug) {
    if (imageSlug == null) {
      return _fullPlaceholderPath;
    }

    final path = getImagePath(imageSlug);
    // TODO  figure out how to check: if (File(path).existsSync()) {
    return path;
    // } else {
    // return _fullPlaceholderPath;
    // }
  }

  static String getThumbOrPlaceholderPath(String? imageSlug) {
    if (imageSlug == null) {
      return _fullPlaceholderThumbsPath;
    }
    final path = getImagePath(_thumbsPrefix + imageSlug);
    // TODO  figure out how to check: if (File(path).existsSync()) {
    return path;
    // } else {
    // return _fullPlaceholderThumbsPath;
    // }
  }

  static String getImagePath(String imageSlug) =>
      p.join(_assetsDir, imageSlug); //TODO test p.join
  static String getExerciseJson() => _fullExercisesPath;
}
