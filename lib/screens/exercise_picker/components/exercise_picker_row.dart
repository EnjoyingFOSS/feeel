import 'package:feeel/utils/asset_util.dart';
import 'package:feeel/components/flipped.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

import '../../../components/exercise_sheet.dart';
import '../../../theming/feeel_shade.dart';

class ExercisePickerRow extends StatelessWidget {
  final bool checked;
  final Function(bool?)? onChanged;
  final Exercise exercise;
  final FeeelSwatch colorSwatch;

  const ExercisePickerRow(
      {Key? key,
      required this.checked,
      this.onChanged,
      required this.exercise,
      required this.colorSwatch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageSlug = exercise.imageSlug;
    return CheckboxListTile(
      activeColor: colorSwatch
          .getColor(FeeelShade.dark.invertIfDark(Theme.of(context).brightness)),
      value: checked,
      title: Row(children: [
        Expanded(child: Text(exercise.name.i18n)),
        IconButton(
          //todo add labels to all icons
          icon: const Icon(Icons.info_outline),
          tooltip: "More info".i18n,
          onPressed: () =>
              ExerciseSheet.showSheet(context, exercise, colorSwatch),
        ),
      ]),
      secondary: (exercise.flipped
          ? Flipped(
              child:
                  Image.asset(AssetUtil.getThumbOrPlaceholderPath(imageSlug)))
          : Image.asset(AssetUtil.getThumbOrPlaceholderPath(imageSlug))),
      onChanged: onChanged,
    );
  }
}
