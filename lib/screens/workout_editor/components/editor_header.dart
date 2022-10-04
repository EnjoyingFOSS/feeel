// Copyright (C) 2019 Miroslav Mazel
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

import 'package:feeel/theming/feeel_shade.dart';
import 'package:feeel/theming/feeel_swatch.dart';
import 'package:flutter/material.dart';

class EditorHeader extends StatelessWidget {
  final Function() onClose;
  final Function(String? title) onSaved;
  final FeeelSwatch colorSwatch;
  final String hintText;
  final String emptyError;
  final TextEditingController textEditingController;

  const EditorHeader(
      {Key? key,
      required this.onClose,
      required this.onSaved,
      required this.colorSwatch,
      required this.hintText,
      required this.emptyError,
      required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color =
        colorSwatch.getColorByBrightness(FeeelShade.dark, theme.brightness);
    return Row(children: <Widget>[
      Container(
        width: 4,
      ),
      CloseButton(
        onPressed: onClose,
        color:
            colorSwatch.getColorByBrightness(FeeelShade.dark, theme.brightness),
      ),
      Expanded(
        child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextFormField(
              style: theme.appBarTheme.titleTextStyle?.copyWith(color: color),
              controller: textEditingController,
              decoration: InputDecoration(
                  focusColor: color,
                  hintStyle: theme.appBarTheme.titleTextStyle?.copyWith(
                      color: theme.brightness == Brightness.dark
                          ? colorSwatch.getColor(FeeelShade.darkest)
                          : colorSwatch.getColor(FeeelShade.lighter)),
                  filled: false,
                  hintText: hintText),
              validator: (String? input) {
                if (input == null || input.isEmpty) {
                  return emptyError;
                }
                return null;
              },
              onSaved: onSaved,
            )),
      ),
    ]);
  }
}
