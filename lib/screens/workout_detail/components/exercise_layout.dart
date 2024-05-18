import 'dart:math';

import 'package:feeel/db/database.dart';
import 'package:feeel/screens/workout_detail/components/exercise_controls.dart';
import 'package:feeel/screens/workout_detail/components/exercise_counter.dart';
import 'package:feeel/screens/workout_detail/components/exercise_footer.dart';
import 'package:feeel/screens/workout_detail/components/exercise_illustration.dart';
import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ExerciseLayout extends StatelessWidget {
  static const _bottomPadding = 16.0;
  static const _minFooterContentHeight = 152.0;

  final Exercise exercise;
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
    required this.exercise,
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

    final screenSize = MediaQuery.sizeOf(context);

    final bottomViewPadding = MediaQuery.viewPaddingOf(context).bottom;
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
                            if (paused)
                              ExerciseControls(
                                themeDarkColor: onBackgroundColor,
                                skipToPrevious: skipToPrevious,
                                skipToNext: skipToNext,
                                togglePlayPause: togglePlayPause,
                              )
                            else
                              Text(
                                AppLocalizations.of(context)!.txtTapForControls,
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
                              exercise: exercise,
                              floating: true,
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
              if (paused)
                ExerciseControls(
                  themeDarkColor: onBackgroundColor,
                  skipToPrevious: skipToPrevious,
                  skipToNext: skipToNext,
                  togglePlayPause: togglePlayPause,
                )
              else
                Text(
                  AppLocalizations.of(context)!.txtTapForControls,
                  style: TextStyle(color: onBackgroundColor),
                ),
              const SizedBox(
                height: 16,
              ),
              ExerciseIllustration(
                  exercise: exercise,
                  floating: false,
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
