// Copyright (C) 2020 Miroslav Mazel
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

import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class DurationDropdown extends StatelessWidget {
  static const CUSTOM = -1;
  final InputDecoration decoration;
  final Function(int) onChanged;
  final int chosenValue;
  final List<int> predefinedValues;
  final _durationController = TextEditingController();
  bool _chosenIsPredefined;

  DurationDropdown(
      {Key key,
      this.decoration,
      this.onChanged,
      this.chosenValue,
      this.predefinedValues})
      : super(key: key) {
    _chosenIsPredefined = predefinedValues.contains(chosenValue);
  }

  @override
  Widget build(BuildContext context) {
    final value = _chosenIsPredefined ? chosenValue : CUSTOM;
    return DropdownButtonFormField(
      value: value,
      items: [
        ...predefinedValues.map((int secs) => DropdownMenuItem(
              child: Text(_formatSecs(secs)),
              value: secs,
            )),
        DropdownMenuItem(
          child: _chosenIsPredefined
              ? Text("Custom".i18n)
              : Text("Custom".i18n + ": " + _formatSecs(chosenValue)),
          value: CUSTOM,
        )
      ],
      onChanged: (value) {
        _onChanged(context, value);
      },
      decoration: decoration,
    );
  }

  String _formatSecs(int secs) {
    if (secs % 60 == 0)
      return "${secs ~/ 60} min";
    else
      return "$secs s";
  }

  void _onChanged(BuildContext context, int value) {
    if (value != CUSTOM) {
      onChanged(value);
    } else {
      showDialog(
          builder: (context) {
            return AlertDialog(
                //todo save custom value
                content: TextField(
                  keyboardType: TextInputType.number,
                  controller: _durationController,
                ) //todo use validation for text field
                ,
                actions: [
                  FlatButton(
                      child: Text("Cancel"),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  FlatButton(
                    child: Text("OK"),
                    onPressed: () {
                      var value =
                          int.tryParse(_durationController.text.toString());
                      if (value != null) onChanged(value);
                      Navigator.pop(context);
                    }, //todo
                  )
                ] //todo isn't the default? + i18n
                );
          },
          context: context);
    }
  }
}
