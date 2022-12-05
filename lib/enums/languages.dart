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

enum ExerciseLanguage {
  en('en', wgerDbId: 2),
  ar('ar'), // TODO NEEDS WGER ID!!!
  cs('cs', wgerDbId: 9),
  de('de', wgerDbId: 1),
  es('es', wgerDbId: 4),
  eu('eu'), // TODO NEEDS WGER ID!!!
  fr('fr', wgerDbId: 12),
  hr('hr'), // TODO NEEDS WGER ID!!!
  id('id'), // TODO NEEDS WGER ID!!!
  it('it', wgerDbId: 13),
  nl('nl', wgerDbId: 6),
  pt('pt', wgerDbId: 7),
  ru('ru', wgerDbId: 5),
  tr('tr', wgerDbId: 16);

  static const defaultLang = en;
  final String langCode;
  final int? wgerDbId;

  const ExerciseLanguage(this.langCode, {this.wgerDbId});
}
