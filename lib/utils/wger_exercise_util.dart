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

import 'dart:convert';
import 'dart:ui';

import 'package:feeel/db/bundled_exercises.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/db/db_image_helper.dart';
import 'package:feeel/enums/equipment.dart';
import 'package:feeel/enums/exercise_category.dart';
import 'package:feeel/enums/exercise_type.dart';
import 'package:feeel/enums/license.dart';
import 'package:feeel/enums/muscle.dart';
import 'package:feeel/enums/muscle_role.dart';
import 'package:feeel/models/full_exercise.dart';
import 'package:feeel/utils/locale_util.dart';
import 'package:feeel/utils/simple_html_markdown_util.dart';

class WgerExerciseUtil {
  static List<FullExercise> parseWgerJson(String fullWgerExerciseBaseJson) {
    final fullWgerExerciseBases =
        (jsonDecode(fullWgerExerciseBaseJson) as Map)["results"] as List;

    return fullWgerExerciseBases
        .map((dynamic fweb) => _parseFullExercise(fweb as Map))
        .toList();
  }

  static FullExercise _parseFullExercise(Map wgerBase) {
    final wgerExercises = wgerBase["exercises"] as List;

    final wgerExerciseEn = wgerExercises.firstWhere((dynamic wgerExercise) =>
            (wgerExercise["language"] as int) == LocaleUtil.wgerFallbackId)
        as Map; //TODO do I need to deal with cases where there is no English original?
    final wgerBaseId = wgerBase["id"] as int;
    final category = ((wgerBase["category"] as Map)["id"] as int) == 15
        ? ExerciseCategory.cardio
        : ExerciseCategory
            .strength; //TODO change when Stretching and Yoga becomes a category too !!!
    final enAuthors = <String>[
      ...(wgerBase["author_history"] as List? ?? []),
      ...(wgerExerciseEn["author_history"] as List? ?? [])
    ]; //TODO nullable author_history is just temporary
    final type = BundledExercises.headExercises.contains(wgerBaseId)
        ? ExerciseType.head
        : ExerciseType.fullBody;
    final variationGroup = wgerBase["variations"] as int?;
    final descLicense =
        License.fromWgerId((wgerBase["license"] as Map)["id"] as int);

    final imageSlug = DBImageHelper.slugs[wgerBaseId];
    final flipped = DBImageHelper.flipped.contains(wgerBaseId);
    final String? imageLicense = DBImageHelper.imageLicenses[wgerBaseId];
    final animated = DBImageHelper.animated.contains(wgerBaseId);

    final name = wgerExerciseEn["name"] as String;
    final description = SimpleHtmlMarkdownUtil.simpleHtmlToMarkdown(
        wgerExerciseEn["description"] as String);
    final unparsedNotes = wgerExerciseEn["notes"] as List?;
    final noteList = unparsedNotes
        ?.map((dynamic un) => (un as Map)["comment"] as String)
        .toList();
    final aliasContents = wgerExerciseEn["aliases"] as List?;
    final aliasesJoined = (aliasContents?.isNotEmpty ?? false)
        ? aliasContents!
            .map((aliasItem) => aliasItem["alias"] as String)
            .toList()
        : null;

    final exercise = Exercise(
        wgerId: wgerBaseId,
        name: name,
        aliases: aliasesJoined,
        type: type,
        description: description,
        notes: noteList,
        descLicense: descLicense,
        descAuthors: enAuthors,
        category: category,
        imageSlug: imageSlug,
        imageLicense: imageLicense,
        flipped: flipped,
        animated: animated,
        variationGroup: variationGroup);

    final exerciseEquipment = (wgerBase["equipment"] as List).map((dynamic e) {
      final wgerEquipmentId = (e as Map)["id"] as int;
      final equipment = EquipmentPiece.fromWgerId(wgerEquipmentId);
      return ExerciseEquipmentPiece(exercise: wgerBaseId, equipment: equipment);
    }).toList();

    final exerciseMuscles = [
      ...(_parseMuscles(
          wgerBase["muscles"] as List, wgerBaseId, MuscleRole.primary)),
      ...(_parseMuscles(wgerBase["muscles_secondary"] as List, wgerBaseId,
          MuscleRole.secondary))
    ];

    final wgerTranslations = (wgerExercises.length == 1)
        ? null
        : _parseTranslations(
            wgerBaseId, wgerBase["exercises"] as List, descLicense);

    return FullExercise(
        exercise: exercise,
        muscles: exerciseMuscles,
        equipment: exerciseEquipment,
        translationsByLanguage: wgerTranslations);
  }

  static Map<Locale, ExerciseTranslation> _parseTranslations(
      int exerciseWgerId, List wgerExercises, License descLicense) {
    final exerciseTranslations = <Locale, ExerciseTranslation>{};

    for (final wgerExercise in wgerExercises) {
      final locale = _parseLocale(wgerExercise as Map);
      if (locale != null && locale != LocaleUtil.fallbackLocale) {
        final name = wgerExercise["name"] as String;
        final description = SimpleHtmlMarkdownUtil.simpleHtmlToMarkdown(
            wgerExercise["description"] as String);
        final unparsedNotes = wgerExercise["notes"] as List?;
        final noteList = unparsedNotes
            ?.map((dynamic un) => (un as Map)["comment"] as String)
            .toList();
        final aliasContents = wgerExercise["aliases"] as List?;
        final aliasesJoined = (aliasContents?.isNotEmpty ?? false)
            ? aliasContents!
                .map((aliasItem) => aliasItem["alias"] as String)
                .toList()
            : null;

        final translationAuthors = () {
          //TODO simplify later and remove try catch, after fixing: _CastError (type 'List<dynamic>' is not a subtype of type 'List<String>' in type cast)
          try {
            return (wgerExercise["author_history"] as List<String>);
          } catch (_) {
            return <String>[];
          }
        }();

        exerciseTranslations.putIfAbsent(
            locale,
            () => ExerciseTranslation(
                exercise: exerciseWgerId,
                locale: locale,
                name: name,
                aliases: aliasesJoined,
                description: description,
                notes: noteList,
                translationAuthors: translationAuthors,
                translationLicense: descLicense));
      }
    }
    return exerciseTranslations;
  }

  static Locale? _parseLocale(Map wgerExercise) {
    try {
      return LocaleUtil.fromWgerLanguage(wgerExercise["language"] as int);
    } on ArgumentError catch (_) {
      return null;
    } // catching ArgumentException here, in case a wger language is not yet implemented in Feeel
  }

  static Iterable<ExerciseMuscle> _parseMuscles(
      List wgerMuscles, int exerciseWgerId, MuscleRole muscleRole) {
    return wgerMuscles.map<ExerciseMuscle>((dynamic wgerMuscle) {
      final wgerId = (wgerMuscle as Map)["id"] as int;
      final muscle = Muscle.fromWgerMuscle(wgerId);
      return ExerciseMuscle(
          exercise: exerciseWgerId, muscle: muscle, role: muscleRole);
    });
  }
}
