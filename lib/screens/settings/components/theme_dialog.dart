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

import 'package:feeel/enums/feeel_theme_mode.dart';
import 'package:feeel/models/feeel_theme_meta.dart';
import 'package:feeel/providers/theme_meta_provider.dart';
import 'package:feeel/theming/feeel_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeDialog extends ConsumerWidget {
  final FeeelThemeMeta themeMeta;

  const ThemeDialog({required this.themeMeta, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //TODO integrate the personalized switch into this too!
    final themeNotifier = ref.read(themeMetaProvider.notifier);
    return AlertDialog(
      title: Text(AppLocalizations.of(context)!.txtTheme),
      content: SizedBox(
        width: LayoutXL.cols6.width,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: FeeelThemeMode.values.length,
          itemBuilder: (BuildContext context, int index) {
            final itemTheme = FeeelThemeMode.values[index];
            return RadioListTile(
              value: index,
              groupValue: themeMeta.mode.index,
              title: Text(itemTheme.getTranslation(context)),
              onChanged: (int? newIndex) {
                if (newIndex != null) {
                  themeNotifier.setTheme(themeMeta.copyWith(mode: itemTheme));
                }
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
    );
  }
}
