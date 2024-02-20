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

/// textEnum in DB
enum License {
  ccBySa3(1, "CC BY-SA 3.0", "https://creativecommons.org/licenses/by-sa/3.0/"),
  ccBySa4(2, "CC BY-SA 4.0", "https://creativecommons.org/licenses/by-sa/4.0/"),
  cc0(3, "CC0",
      "https://creativecommons.org/share-your-work/public-domain/cc0/"),
  ccBy4(4, "CC BY 4.0", "https://creativecommons.org/licenses/by/4.0/");

  final int wgerDbId;
  final String licenseName;
  final String licenseLink;

  const License(this.wgerDbId, this.licenseName, this.licenseLink);

  static License fromWgerId(int wgerId) {
    switch (wgerId) {
      case 1:
        return License.ccBySa3;
      case 2:
        return License.ccBySa4;
      case 3:
        return License.cc0;
      case 4:
        return License.ccBy4;
      default:
        throw ArgumentError.value(
            wgerId); // TODO ALWAYS CATCH THIS, AS WGER'S DB MIGHT BE UPDATED!
    }
  }
}
