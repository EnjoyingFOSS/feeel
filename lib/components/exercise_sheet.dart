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

import 'dart:io';

import 'package:feeel/components/illustration_widget.dart';
import 'package:feeel/screens/workout_detail/components/body_exercise_content.dart';
import 'package:feeel/screens/workout_detail/components/head_exercise_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../db/asset_helper.dart';
import '../enums/exercise_type.dart';
import '../models/view/exercise.dart';
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
      initialChildSize: (Platform.isAndroid || Platform.isIOS) ? 0.75 : 1.0,
      snap: true,
      snapSizes: const [0.75, 1.0], //todo 0 needed?
      builder: (BuildContext context, ScrollController scrollController) {
        final imageSlug = exercise.imageSlug;
        final headOnly = exercise.type == ExerciseType.HEAD;

        final brightness = Theme.of(context).brightness;
        final fgColor = Colors.white;
        final bgColor = brightness == Brightness.dark
            ? colorSwatch.getColor(FeeelShade.DARKER)
            : colorSwatch.getColor(FeeelShade.DARK);
        final licenseColor = fgColor.withAlpha(192);

        final padding = EdgeInsets.fromLTRB(
            MediaQuery.of(context).padding.left + 16,
            16,
            MediaQuery.of(context).padding.right + 16,
            16);

        final markdownLicenseStyle =
            MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
                p: TextStyle(fontSize: 12, color: licenseColor),
                a: TextStyle(color: licenseColor));

        final hasDescriptionLicense = exercise.descriptionLicense != null;
        final hasImageLicense = exercise.imageLicense != null;

        return CustomScrollView(
          controller: scrollController,
          physics: ClampingScrollPhysics(),
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
                            child: headOnly
                                ? Stack(children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: FractionallySizedBox(
                                          heightFactor: 0.372,
                                          widthFactor: 1.0,
                                          child: Container(
                                            color: bgColor,
                                          ),
                                        )),
                                    Center(
                                        child: HeadExerciseContent(
                                            color: colorSwatch
                                                .getColorByBrightness(
                                                    FeeelShade.LIGHTEST,
                                                    brightness),
                                            onBreak: false,
                                            illustration: IllustrationWidget(
                                                imageAssetString:
                                                    AssetHelper.getImage(
                                                        imageSlug),
                                                flipped: exercise.flipped),
                                            triangleSeed:
                                                exercise.name.hashCode)),
                                  ])
                                : Center(
                                    child: BodyExerciseContent(
                                        color: bgColor,
                                        onBreak: false,
                                        squareRatio: true,
                                        illustration: IllustrationWidget(
                                            imageAssetString:
                                                AssetHelper.getImage(imageSlug),
                                            flipped: exercise.flipped)))))),
              Container(
                padding: padding,
                color: bgColor,
                width: double.infinity,
                child: Text(
                  exercise.name.i18n,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: fgColor),
                ),
              ),
              _RowContainer(
                padding: padding,
                child: Text(
                  exercise.description.i18n,
                  style: TextStyle(color: fgColor),
                ),
                bgColor: bgColor,
              ),
              if (hasDescriptionLicense ||
                  hasImageLicense) //todo hide licenses under an expandable button
                _RowContainer(
                    padding: padding.copyWith(top: 0),
                    bgColor: bgColor,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(color: fgColor.withAlpha(48), height: 1),
                          Container(
                            height: 16,
                          ),
                          if (hasDescriptionLicense)
                            Text(
                              "English description license".i18n.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .overline
                                  ?.copyWith(color: licenseColor),
                            ),
                          if (hasDescriptionLicense)
                            MarkdownBody(
                                data: exercise.descriptionLicense ?? "",
                                styleSheet: markdownLicenseStyle),
                          if (hasDescriptionLicense)
                            Container(
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
                                styleSheet: markdownLicenseStyle)
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

class _RowContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final Color bgColor;

  const _RowContainer(
      {Key? key,
      required this.child,
      required this.padding,
      required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      color: bgColor,
      width: double.infinity,
      child: child,
    );
  }
}
