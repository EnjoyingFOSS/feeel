// Copyright (C) 2019–2021 Miroslav Mazel
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

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:feeel/theming/theme_mode_extensions.dart';

class ThemeDialog extends StatelessWidget {
  final AdaptiveThemeMode? curTheme;

  const ThemeDialog({required this.curTheme, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Theme".i18n),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView.builder(
          itemCount: AdaptiveThemeMode.values.length,
          itemBuilder: (BuildContext context, int index) {
            final itemTheme = AdaptiveThemeMode.values[index];
            return RadioListTile(
              value: index,
              groupValue: curTheme?.index,
              title: Text(itemTheme.uiName().i18n),
              onChanged: (int? newIndex) {
                if (newIndex != null) {
                  AdaptiveThemeMode.values[newIndex].apply(context);
                }
                Navigator.pop(context);
              },
            );
          },
          shrinkWrap: true,
        ),
      ),
    );
  }
}
