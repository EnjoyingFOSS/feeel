import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../theming/feeel_shade.dart';
import '../../../theming/feeel_swatch.dart';
import 'exercise_controls.dart';
import 'exercise_counter.dart';
import 'exercise_footer.dart';
import 'exercise_illustration.dart';

class ExerciseLayout extends StatelessWidget {
  static const _bottomPadding = 16.0;
  static const _minFooterContentHeight = 152.0;

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
    //TODO use two-pane layout in landscape
    final theme = Theme.of(context);

    final onBackgroundColor =
        colorSwatch.getColor(FeeelShade.dark.invertIfDark(theme.brightness));

    final fgColor = headOnly
        ? onBackgroundColor
        : colorSwatch.getForegroundColor(FeeelShade.dark);
    final bgColor = headOnly
        ? Colors.transparent
        : (theme.brightness == Brightness.dark
            ? colorSwatch.getColor(FeeelShade.darker)
            : colorSwatch.getColor(FeeelShade.dark));

    final screenSize = MediaQuery.of(context).size;

    final bottomViewPadding = MediaQuery.of(context).viewPadding.bottom;
    final footerBottomPadding =
        bottomViewPadding > _bottomPadding ? bottomViewPadding : _bottomPadding;

    final footerContentHeight =
        max(_minFooterContentHeight, screenSize.height * 0.372);

    return (screenSize.width > screenSize.height &&
            screenSize.width >= 568 &&
            screenSize.height <
                568) //TODO at small screen landscape sizes, allow image to be smaller
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
                                color: onBackgroundColor,
                                paused: paused,
                                counterText: secondsString),
                            paused
                                ? ExerciseControls(
                                    themeDarkColor: onBackgroundColor,
                                    skipToPrevious: skipToPrevious,
                                    skipToNext: skipToNext,
                                    togglePlayPause: togglePlayPause,
                                  )
                                : Text(
                                    AppLocalizations.of(context)!
                                        .txtTapForControls,
                                    style: TextStyle(color: onBackgroundColor),
                                  ),
                            const Expanded(
                              child: SizedBox(),
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
                      //TODO column here seems unnecessarily complex
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
                  color: onBackgroundColor,
                  paused: paused,
                  counterText: secondsString),
              paused
                  ? ExerciseControls(
                      themeDarkColor: onBackgroundColor,
                      skipToPrevious: skipToPrevious,
                      skipToNext: skipToNext,
                      togglePlayPause: togglePlayPause,
                    )
                  : Text(
                      AppLocalizations.of(context)!.txtTapForControls,
                      style: TextStyle(color: onBackgroundColor),
                    ),
              const SizedBox(
                height: 16,
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
                  contentHeight: _minFooterContentHeight,
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
