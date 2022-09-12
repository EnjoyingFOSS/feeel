// Copyright (C) 2019–2021 Miroslav Mazel
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

import 'package:feeel/db/db_helper.dart';

class JSONMetadata {
  static const _CUR_METADATA_VERSION = 1;

  static const _METADATA_VERSION_KEY = 'metadataVersion';
  static const _DATABASE_VERSION_KEY = 'databaseVersion';

  final int metadataVersion;
  final int databaseVersion;

  JSONMetadata(
      {this.metadataVersion = _CUR_METADATA_VERSION,
      this.databaseVersion = DBHelper.DATABASE_VERSION});

  static JSONMetadata fromJson(Map<String, dynamic> json) {
    return JSONMetadata(
        metadataVersion: json[_METADATA_VERSION_KEY] as int,
        databaseVersion: json[_DATABASE_VERSION_KEY] as int);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        _METADATA_VERSION_KEY: metadataVersion,
        _DATABASE_VERSION_KEY: databaseVersion,
      };
}
