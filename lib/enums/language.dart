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
  en('en', wgerDbId: _wgerEn), // English
  ar('ar', wgerDbId: _wgerAr), // Arabic
  cs('cs', wgerDbId: _wgerCs), // Czech
  de('de', wgerDbId: _wgerDe), // German
  el('el', wgerDbId: _wgerEl), // Greek
  es('es', wgerDbId: _wgerEs), // Spanish
  fr('fr', wgerDbId: _wgerFr), // French
  hr('hr', wgerDbId: _wgerHr), // Croatian
  id('id', wgerDbId: _wgerId), // Indonesian
  it('it', wgerDbId: _wgerIt), // Italian
  nl('nl', wgerDbId: _wgerNl), // Dutch
  pt('pt', wgerDbId: _wgerPt), // Portuguese
  ru('ru', wgerDbId: _wgerRu), // Russian
  tr('tr', wgerDbId: _wgerTr), // Turkish
  zh('zh', wgerDbId: _wgerZhHans); // Chinese (simplified)

  static const _wgerDe = 1,
      _wgerEn = 2,
      _wgerEs = 4,
      _wgerRu = 5,
      _wgerNl = 6,
      _wgerPt = 7,
      _wgerEl = 8,
      _wgerCs = 9,
      _wgerSv = 10,
      _wgerFr = 12,
      _wgerIt = 13,
      _wgerTr = 16,
      _wgerAr = 17,
      _wgerAz = 18,
      _wgerEo = 19,
      _wgerFa = 20,
      _wgerHe = 21,
      _wgerHr = 22,
      _wgerId = 23,
      _wgerZhHans = 24;
  static const fallbackLang = en;
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
