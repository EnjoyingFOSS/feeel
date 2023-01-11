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

import 'package:feeel/components/illustration_widget.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/screens/workout_detail/components/body_exercise_content.dart';
import 'package:feeel/screens/workout_detail/components/head_exercise_content.dart';
import 'package:feeel/utils/url_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../utils/asset_util.dart';
import '../enums/exercise_type.dart';
import 'package:feeel/i18n/translations.dart';

import '../theming/feeel_shade.dart';
import '../theming/feeel_swatch.dart';

class ExerciseSheet extends StatelessWidget {
  //todo make responsive // todo show during breaks
  final Exercise exercise;
  final FeeelSwatch colorSwatch;

  const ExerciseSheet(
      {required this.exercise, required this.colorSwatch, Key? key})
      : super(key: key);

  static void showSheet(
      BuildContext context, Exercise exercise, FeeelSwatch colorSwatch) {
    showModalBottomSheet<void>(
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        builder: (context) => ExerciseSheet(
              exercise: exercise,
              colorSwatch: colorSwatch,
            ),
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    //todo make this themable
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.75,
      snap: true,
      snapSizes: const [0.75, 1.0],
      builder: (BuildContext context, ScrollController scrollController) {
        final imageSlug = exercise.imageSlug; //todo reset image slug on display
        final headOnly = exercise.type == ExerciseType.head;

        final brightness = Theme.of(context).brightness;
        const fgColor = Colors.white;
        final bgColor = brightness == Brightness.dark
            ? colorSwatch.getColor(FeeelShade.darker)
            : colorSwatch.getColor(FeeelShade.dark);
        final licenseColor = fgColor.withAlpha(192);

        final markdownLicenseStyle =
            MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
                p: TextStyle(fontSize: 12, color: licenseColor),
                a: TextStyle(
                    color: licenseColor, decoration: TextDecoration.underline));

        final hasImageLicense = exercise.imageLicense != null;

        return CustomScrollView(
          controller: scrollController,
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              if (imageSlug != null)
                ConstrainedBox(
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height * 0.4),
                    child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                            color: Colors
                                .transparent, // used to make even the transparent areas clickable
                            child: Stack(children: [
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: FractionallySizedBox(
                                    heightFactor: 0.372,
                                    widthFactor: 1.0,
                                    child: Container(
                                      color: bgColor,
                                    ),
                                  )),
                              headOnly
                                  ? HeadExerciseContent(
                                      color: colorSwatch.getColorByBrightness(
                                          FeeelShade.lightest, brightness),
                                      onBreak: false,
                                      illustration: IllustrationWidget(
                                          imageAssetString:
                                              AssetUtil.getImage(imageSlug),
                                          flipped: exercise.flipped),
                                      triangleSeed: exercise.name.hashCode)
                                  : BodyExerciseContent(
                                      onBreak: false,
                                      illustration: IllustrationWidget(
                                        imageAssetString:
                                            AssetUtil.getImage(imageSlug),
                                        flipped: exercise.flipped,
                                      )),
                            ])))),
              Container(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).padding.left + 16,
                      0,
                      MediaQuery.of(context).padding.right + 16,
                      16),
                  color: bgColor,
                  width: double.infinity,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Text(
                          exercise.name.i18n,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: fgColor),
                        )),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          exercise.description?.i18n ?? "",
                          style: const TextStyle(color: fgColor),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                            color: fgColor.withAlpha(48),
                            height:
                                1), //todo hide licenses under an expandable button
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Disclaimer".i18n.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .overline
                              ?.copyWith(color: licenseColor),
                        ),
                        MarkdownBody(
                            data:
                                "Exercises and workouts are volunteer-contributed. Neither Feeel nor any volunteer is responsible for the correctness of any info in this app or for your health. Use at your own discretion."
                                    .i18n,
                            styleSheet: markdownLicenseStyle,
                            onTapLink: (text, url, title) =>
                                URLUtil.launchURL(context, url ?? "")),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "English description license".i18n.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .overline
                              ?.copyWith(color: licenseColor),
                        ),
                        MarkdownBody(
                            data:
                                "English description by %1s is licensed under the [%2s license]."
                                    .i18n
                                    .replaceFirst("]",
                                        "](${exercise.descLicense.licenseLink})")
                                    .replaceFirst(
                                        "%1s",
                                        exercise.descAuthors
                                            .split(Exercises.listSeparator)
                                            .join(", "))
                                    .replaceFirst("%2s",
                                        exercise.descLicense.licenseName),
                            styleSheet: markdownLicenseStyle,
                            onTapLink: (text, url, title) =>
                                URLUtil.launchURL(context, url ?? "")),
                        const SizedBox(
                          height: 16,
                        ),
                        if (hasImageLicense)
                          Text("Image license".i18n.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .overline
                                  ?.copyWith(color: licenseColor)),
                        if (hasImageLicense)
                          MarkdownBody(
                              data: exercise.imageLicense ?? "",
                              styleSheet: markdownLicenseStyle,
                              onTapLink: (text, url, title) =>
                                  URLUtil.launchURL(context, url ?? ""))
                      ]))
            ])),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(color: bgColor),
            )
          ],
        );
      },
    );
  }
}
