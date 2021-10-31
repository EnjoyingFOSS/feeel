import 'package:feeel/db/asset_helper.dart';
import 'package:feeel/models/view/exercise.dart';
import 'package:feeel/components/flipped.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class ExercisePickerRow extends StatelessWidget {
  final bool checked;
  final Function(bool?)? onChanged;
  final Exercise exercise;
  final Color color;

  const ExercisePickerRow(
      {Key? key, required this.checked, this.onChanged, required this.exercise, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageSlug = exercise.imageSlug;
    return CheckboxListTile(
      activeColor: color,
      value: checked,
      title: Row(children: [
        Expanded(child: Text(exercise.name.i18n)),
        IconButton(
          //todo add labels to all icons
          icon: Icon(Icons.info_outline),
          tooltip: "More info".i18n,
          onPressed: () => showDialog<void>(
              context: context,
              builder: (context) => AlertDialog(
                    scrollable: true,
                    title: Text(exercise.name.i18n),
                    content: Text(exercise.description.i18n),
                  )),
        ),
      ]),
      secondary: imageSlug == null
          ? Container(
              width: 0,
            )
          : (exercise.twoSided
              ? Flipped(child: Image.asset(AssetHelper.getThumb(imageSlug)))
              : Image.asset(AssetHelper.getThumb(imageSlug))),
      onChanged: onChanged,
    );
  }
}
