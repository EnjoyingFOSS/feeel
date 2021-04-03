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

class TrailingSecondsInput extends StatelessWidget {
  final Function(String?) onSaved;
  final int defaultDuration;
  final int? initialValue;

  TrailingSecondsInput(
      {required this.onSaved,
      required this.defaultDuration,
      this.initialValue});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 68,
        child: Row(children: [
          Expanded(
              child: TextFormField(
            textAlign: TextAlign.end,
            initialValue: initialValue?.toString() ?? "",
            decoration: InputDecoration(
                hintStyle: TextStyle(fontStyle: FontStyle.italic),
                hintText:
                    initialValue != null ? "" : defaultDuration.toString(),
                //todo i18n annotation
                filled: true),
            keyboardType: TextInputType.number,
            validator: (String? input) {
              if (input == "") return null;
              var secs = int.tryParse(input ?? "");
              if (secs == null) {
                //todo upper bound?
                return "Non-numeric".i18n;
              }
              if (secs < 1) {
                return "Nonpositive".i18n;
              }
              return null;
            },
            onSaved: this.onSaved,
          )),
          Text(" s")
        ]));
  }
}
