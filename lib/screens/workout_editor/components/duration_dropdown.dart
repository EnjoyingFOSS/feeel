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

import 'package:feeel/utils/format_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DurationDropdown extends StatelessWidget {
  static const _custom = -1;
  final InputDecoration decoration;
  final Function(int) onChanged;
  final int chosenValue;
  final List<int> predefinedValues;
  final _durationController = TextEditingController();
  final bool _chosenIsPredefined;

  DurationDropdown(
      {Key? key,
      required this.decoration,
      required this.onChanged,
      required this.chosenValue,
      required this.predefinedValues})
      : _chosenIsPredefined = predefinedValues.contains(chosenValue),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = _chosenIsPredefined ? chosenValue : _custom;
    return DropdownButtonFormField(
      value: value,
      items: [
        ...predefinedValues.map((int secs) => DropdownMenuItem(
              value: secs,
              child: Text(FormatUtil.getDuration(context, secs),
                  style: FormatUtil.durationTextStyle),
            )),
        DropdownMenuItem(
          value: _custom,
          child: _chosenIsPredefined
              ? Text(AppLocalizations.of(context)!.txtCustom)
              : Text(AppLocalizations.of(context)!
                  .txtCustomWithDuration
                  .replaceFirst(
                      "%s", FormatUtil.getDuration(context, chosenValue))),
        )
      ],
      onChanged: (int? value) {
        if (value != null) _onChanged(context, value);
      },
      decoration: decoration,
    );
  }

  void _onChanged(BuildContext context, int value) {
    if (value != _custom) {
      onChanged(value);
    } else {
      showDialog<void>(
          builder: (context) {
            return AlertDialog(
                //TODO save custom value
                content: TextField(
                  decoration: InputDecoration(
                      labelText:
                          AppLocalizations.of(context)!.txtCustomDuration),
                  keyboardType: TextInputType.number,
                  controller: _durationController,
                ) //TODO use validation for text field
                ,
                actions: [
                  TextButton(
                      child: Text(AppLocalizations.of(context)!.btnCancel),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  TextButton(
                    child: Text(AppLocalizations.of(context)!.btnOK),
                    onPressed: () {
                      final value =
                          int.tryParse(_durationController.text.toString());
                      if (value != null && value > 0) onChanged(value);
                      Navigator.pop(context);
                    }, //TODO
                  )
                ] //TODO isn't the default? + i18n
                );
          },
          context: context);
    }
  }
}
