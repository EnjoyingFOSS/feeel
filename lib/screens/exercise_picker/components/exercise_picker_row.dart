import 'package:feeel/components/illustration_widget.dart';
import 'package:feeel/models/full_exercise.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../components/exercise_sheet.dart';
import '../../../theming/feeel_shade.dart';

class ExercisePickerRow extends StatelessWidget {
  final bool checked;
  final Function(bool?)? onChanged;
  final FullExercise primaryLangFullExercise;
  final FeeelSwatch colorSwatch;

  const ExercisePickerRow(
      {Key? key,
      required this.checked,
      this.onChanged,
      required this.primaryLangFullExercise,
      required this.colorSwatch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageSlug = primaryLangFullExercise.exercise.imageSlug;
    return CheckboxListTile(
      activeColor: colorSwatch
          .getColor(FeeelShade.dark.invertIfDark(Theme.of(context).brightness)),
      value: checked,
      title: Row(children: [
        Expanded(child: Text(primaryLangFullExercise.getFirstTranslatedName())),
        IconButton(
          //TODO add labels to all icons
          icon: const Icon(Icons.info_outline),
          tooltip: AppLocalizations.of(context)!.btnMoreInfo,
          onPressed: () => ExerciseSheet.showSheet(
              context, primaryLangFullExercise, colorSwatch),
        ),
      ]),
      secondary: IllustrationWidget(
          imageAssetString: AssetUtil.getThumbOrPlaceholderPath(imageSlug),
          flipped: primaryLangFullExercise.exercise.flipped),
      onChanged: onChanged,
    );
  }
}
