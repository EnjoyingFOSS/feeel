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

/// textEnum in DB
enum ExerciseLanguage {
  en('en', wgerDbId: _wgerEn),
  ar('ar'), // TODO NEEDS WGER ID!!!
  cs('cs', wgerDbId: _wgerCs),
  de('de', wgerDbId: _wgerDe),
  es('es', wgerDbId: _wgerEs),
  eu('eu'), // TODO NEEDS WGER ID!!!
  fr('fr', wgerDbId: _wgerFr),
  hr('hr'), // TODO NEEDS WGER ID!!!
  id('id'), // TODO NEEDS WGER ID!!!
  it('it', wgerDbId: _wgerIt),
  nl('nl', wgerDbId: _wgerNl),
  pt('pt', wgerDbId: _wgerPt),
  ru('ru', wgerDbId: _wgerRu),
  tr('tr', wgerDbId: _wgerTr);

  static const _wgerDe = 1,
      _wgerEn = 2,
      _wgerEs = 4,
      _wgerRu = 5,
      _wgerNl = 6,
      _wgerPt = 7,
      _wgerCs = 9,
      _wgerFr = 12,
      _wgerIt = 13,
      _wgerTr = 16;
  static const defaultLang = en;
  final String langCode;
  final int? wgerDbId;

  const ExerciseLanguage(this.langCode, {this.wgerDbId});

  static ExerciseLanguage fromWgerLanguage(int wgerLanguage) {
    switch (wgerLanguage) {
      case _wgerDe:
        return de;
      case _wgerEn:
        return en;
      case _wgerEs:
        return es;
      case _wgerRu:
        return ru;
      case _wgerNl:
        return nl;
      case _wgerPt:
        return pt;
      case _wgerCs:
        return cs;
      case _wgerFr:
        return fr;
      case _wgerIt:
        return it;
      case _wgerTr:
        return tr;
      default:
        throw ArgumentError.value(wgerLanguage);
    }
  }
}
