import 'dart:math';

import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

import '../../../theming/feeel_shade.dart';
import '../../../theming/feeel_swatch.dart';
import 'exercise_controls.dart';
import 'exercise_counter.dart';
import 'exercise_footer.dart';
import 'exercise_illustration.dart';

class ExerciseLayout extends StatelessWidget {
  static const _BOTTOM_PADDING = 16.0;
  static const _MIN_FOOTER_CONTENT_HEIGHT = 152.0;

  final String? imageSlug;
  final String title;
  final String secondsString;
  final bool headOnly;
  final bool animated;
  final bool paused;
  final bool onBreak;
  final int triangleSeed;
  final bool flipped;
  final FeeelSwatch colorSwatch;
  final void Function() onLearn;
  final void Function() togglePlayPause;
  final void Function() skipToPrevious;
  final void Function() skipToNext;

  const ExerciseLayout({
    Key? key,
    this.imageSlug,
    required this.title,
    required this.secondsString,
    required this.headOnly,
    required this.animated,
    required this.paused,
    required this.onBreak,
    required this.triangleSeed,
    required this.flipped,
    required this.colorSwatch,
    required this.onLearn,
    required this.togglePlayPause,
    required this.skipToPrevious,
    required this.skipToNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //todo use two-pane layout in landscape
    final theme = Theme.of(context);

    final themeDarkColor =
        colorSwatch.getColorByBrightness(FeeelShade.DARK, theme.brightness);

    final fgColor =
        headOnly ? colorSwatch.getColor(FeeelShade.DARK) : Colors.white;
    final bgColor = headOnly
        ? Colors.transparent
        : (theme.brightness == Brightness.dark
            ? colorSwatch.getColor(FeeelShade.DARKER)
            : colorSwatch.getColor(FeeelShade.DARK));

    final screenSize = MediaQuery.of(context).size;

    final bottomViewPadding = MediaQuery.of(context).viewPadding.bottom;
    final footerBottomPadding = bottomViewPadding > _BOTTOM_PADDING
        ? bottomViewPadding
        : _BOTTOM_PADDING;

    final footerContentHeight =
        max(_MIN_FOOTER_CONTENT_HEIGHT, screenSize.height * 0.372);

    return (screenSize.width > screenSize.height &&
            screenSize.width >= 568 &&
            screenSize.height <
                568) //todo at small screen landscape sizes, allow image to be smaller
        ? Stack(children: [
            if (!headOnly)
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: footerContentHeight,
                  width: double.infinity,
                  color: bgColor,
                ),
              ),
            Row(
              children: [
                Flexible(
                    child: ConstrainedBox(
                        constraints: const BoxConstraints(minWidth: 284),
                        child: Column(
                          children: [
                            ExerciseCounter(
                                color: themeDarkColor,
                                paused: paused,
                                counterText: secondsString),
                            paused
                                ? ExerciseControls(
                                    themeDarkColor: themeDarkColor,
                                    skipToPrevious: skipToPrevious,
                                    skipToNext: skipToNext,
                                    togglePlayPause: togglePlayPause,
                                  )
                                : Text(
                                    "Tap for controls".i18n,
                                    style: TextStyle(color: themeDarkColor),
                                  ),
                            Expanded(
                              child: Container(),
                            ),
                            ExerciseFooter(
                              onBreak: onBreak,
                              bgColor: Colors.transparent,
                              fgColor: fgColor,
                              title: title,
                              headOnly: headOnly,
                              paused: paused,
                              onLearn: onLearn,
                              colorSwatch: colorSwatch,
                              contentHeight:
                                  footerContentHeight - footerBottomPadding,
                              bottomPadding: footerBottomPadding,
                            )
                          ],
                        ))),
                Flexible(
                    child: ConstrainedBox(
                  constraints:
                      const BoxConstraints(minWidth: 284, maxWidth: 640),
                  child:
                      //todo column here seems unnecessarily complex
                      Padding(
                          padding: const EdgeInsets.all(8),
                          child: ExerciseIllustration(
                              floating: true,
                              imageSlug: imageSlug,
                              title: title,
                              headOnly: headOnly,
                              animated: animated,
                              paused: paused,
                              onBreak: onBreak,
                              triangleSeed: triangleSeed,
                              flipped: flipped,
                              onLearn: onLearn,
                              colorSwatch: colorSwatch,
                              bgColor: bgColor)),
                ))
              ],
            )
          ])
        : Column(
            children: <Widget>[
              ExerciseCounter(
                  color: themeDarkColor,
                  paused: paused,
                  counterText: secondsString),
              paused
                  ? ExerciseControls(
                      themeDarkColor: themeDarkColor,
                      skipToPrevious: skipToPrevious,
                      skipToNext: skipToNext,
                      togglePlayPause: togglePlayPause,
                    )
                  : Text(
                      "Tap for controls".i18n,
                      style: TextStyle(color: themeDarkColor),
                    ),
              ExerciseIllustration(
                  floating: false,
                  imageSlug: imageSlug,
                  title: title,
                  headOnly: headOnly,
                  animated: animated,
                  paused: paused,
                  onBreak: onBreak,
                  triangleSeed: triangleSeed,
                  flipped: flipped,
                  onLearn: onLearn,
                  colorSwatch: colorSwatch,
                  bgColor: bgColor),
              ExerciseFooter(
                  contentHeight: _MIN_FOOTER_CONTENT_HEIGHT,
                  bottomPadding: footerBottomPadding,
                  onBreak: onBreak,
                  bgColor: bgColor,
                  fgColor: fgColor,
                  title: title,
                  headOnly: headOnly,
                  paused: paused,
                  onLearn: onLearn,
                  colorSwatch: colorSwatch)
            ],
          );
  }
}
