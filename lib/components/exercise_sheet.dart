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

import 'package:feeel/components/illustration_widget.dart';
import 'package:feeel/models/translated_exercise.dart';
import 'package:feeel/screens/workout_detail/components/body_exercise_content.dart';
import 'package:feeel/screens/workout_detail/components/contribution_overlay.dart';
import 'package:feeel/screens/workout_detail/components/head_exercise_content.dart';
import 'package:feeel/theming/feeel_grid.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:feeel/utils/url_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ExerciseSheet extends StatelessWidget {
  final TranslatedExercise translatedExercise;
  final FeeelSwatch colorSwatch;

  const ExerciseSheet(
      //TODO make an alternative for Linux — a dialog with the same content
      {required this.translatedExercise,
      required this.colorSwatch,
      Key? key})
      : super(key: key);

  static void showSheet(BuildContext context,
      TranslatedExercise translatedExercise, FeeelSwatch colorSwatch) {
    showModalBottomSheet<void>(
        context: context,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        isDismissible: true,
        builder: (_) => ExerciseSheet(
              translatedExercise: translatedExercise,
              colorSwatch: colorSwatch,
            ));
  }

  @override
  Widget build(BuildContext context) {
    //TODO make this themable
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.75,
      snap: true,
      snapSizes: const [0.75, 1.0],
      builder: (BuildContext context, ScrollController scrollController) {
        //TODO reset image slug on display
        final mediaSize = MediaQuery.sizeOf(context);
        final mediaPadding = MediaQuery.of(context).padding;

        final brightness = Theme.of(context).brightness;
        final bgColor = brightness == Brightness.dark
            ? colorSwatch.getColor(FeeelShade.darker)
            : colorSwatch.getColor(FeeelShade.dark);
        final fgColor = colorSwatch.getForegroundColor(FeeelShade.dark);
        final licenseColor = fgColor.withAlpha(192);

        final markdownBodyStyle =
            MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
                p: TextStyle(color: fgColor),
                a: TextStyle(color: fgColor, decoration: TextDecoration.none),
                listBullet: TextStyle(color: fgColor));
        final markdownLicenseStyle =
            MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
                p: TextStyle(fontSize: 12, color: licenseColor),
                a: TextStyle(
                    color: licenseColor, decoration: TextDecoration.underline));

        final hasImageLicense =
            translatedExercise.exercise.imageLicense != null;

        final translatedNotes = translatedExercise.getNotes();

        return CustomScrollView(
          controller: scrollController,
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: mediaSize.height * 0.4),
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
                            if (translatedExercise.exercise.headOnly)
                              HeadExerciseContent(
                                  color: colorSwatch.getColor(FeeelShade
                                      .lightest
                                      .invertIfDark(brightness)),
                                  onBreak: false,
                                  illustration: IllustrationWidget(
                                      imageAssetString:
                                          AssetUtil.getExerciseImage(
                                              translatedExercise.exercise),
                                      flipped: translatedExercise
                                          .exercise.imageFlipped),
                                  triangleSeed:
                                      translatedExercise.exercise.name.hashCode)
                            else
                              translatedExercise.exercise.imageSlug != null
                                  ? BodyExerciseContent(
                                      onBreak: false,
                                      illustration: IllustrationWidget(
                                        imageAssetString:
                                            AssetUtil.getExerciseImage(
                                                translatedExercise.exercise),
                                        flipped: translatedExercise
                                            .exercise.imageFlipped,
                                      ))
                                  : Stack(children: <Widget>[
                                      BodyExerciseContent(
                                        onBreak: false,
                                        illustration: IllustrationWidget(
                                            imageAssetString:
                                                AssetUtil.getExerciseImage(
                                                    translatedExercise
                                                        .exercise),
                                            flipped: translatedExercise
                                                .exercise.imageFlipped),
                                        alignment: Alignment.center,
                                      ),
                                      ContributionOverlay(
                                          colorSwatch: colorSwatch)
                                    ]),
                          ])))),
              Container(
                  padding: EdgeInsets.fromLTRB(
                      mediaPadding.left + 16,
                      0,
                      mediaPadding.right + 16,
                      16),
                  color: bgColor,
                  width: double.infinity,
                  child: Center(
                      child: ConstrainedBox(
                          constraints:
                              BoxConstraints(maxWidth: LayoutXL.cols8.width),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                    child: Text(
                                  translatedExercise.getName(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w900,
                                      color: fgColor),
                                )),
                                const SizedBox(
                                  height: 8,
                                ),
                                MarkdownBody(
                                  data:
                                      translatedExercise.getDescription() ?? "",
                                  styleSheet: markdownBodyStyle,
                                  imageBuilder: (a, b, c) => const SizedBox(),
                                  onTapLink: (a, b, c) {},
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                if (translatedNotes != null)
                                  Text(
                                    AppLocalizations.of(context)!
                                        .txtNotesInDesc,
                                    style: TextStyle(
                                        color: fgColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                const SizedBox(
                                  height: 8,
                                ),
                                if (translatedNotes != null)
                                  MarkdownBody(
                                    data: "* ${translatedNotes.join("\n* ")}",
                                    styleSheet: markdownBodyStyle,
                                    imageBuilder: (a, b, c) => const SizedBox(),
                                    onTapLink: (a, b, c) {},
                                  ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                    color: fgColor.withAlpha(48),
                                    height:
                                        1), //TODO hide licenses under an expandable button
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  AppLocalizations.of(context)!
                                      .txtDisclaimerHeading
                                      .toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(color: licenseColor),
                                ),
                                MarkdownBody(
                                    data: AppLocalizations.of(context)!
                                        .txtDisclaimerContent,
                                    styleSheet: markdownLicenseStyle,
                                    onTapLink: (text, url, title) =>
                                        URLUtil.launchURL(context, url ?? "")),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  AppLocalizations.of(context)!
                                      .txtEnglishDescriptionLicense
                                      .toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(color: licenseColor),
                                ),
                                MarkdownBody(
                                    data: AppLocalizations.of(context)!
                                        .txtEnglishDescLicense
                                        .replaceFirst("]",
                                            "](${translatedExercise.exercise.descLicense.licenseLink})")
                                        .replaceFirst(
                                            "%1s",
                                            translatedExercise
                                                .exercise.descAuthors
                                                .join(", "))
                                        .replaceFirst(
                                            "%2s",
                                            translatedExercise.exercise
                                                .descLicense.licenseName),
                                    styleSheet: markdownLicenseStyle,
                                    onTapLink: (text, url, title) =>
                                        URLUtil.launchURL(context, url ?? "")),
                                const SizedBox(
                                  height: 16,
                                ),
                                if (hasImageLicense)
                                  Text(
                                      AppLocalizations.of(context)!
                                          .txtImageLicense
                                          .toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(color: licenseColor)),
                                if (hasImageLicense)
                                  MarkdownBody(
                                      data: translatedExercise
                                              .exercise.imageLicense ??
                                          "",
                                      styleSheet: markdownLicenseStyle,
                                      onTapLink: (text, url, title) =>
                                          URLUtil.launchURL(context, url ?? ""))
                              ]))))
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
