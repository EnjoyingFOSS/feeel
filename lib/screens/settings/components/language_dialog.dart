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

import 'package:feeel/i18n/ui_locale_helper.dart';
import 'package:feeel/providers/locale_provider.dart';
import 'package:feeel/theming/feeel_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguageDialog extends ConsumerWidget {
  final Locale? chosenLocale;

  const LanguageDialog({required this.chosenLocale, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeNotifier = ref.read(localeProvider.notifier);
    const supportedLocales = AppLocalizations
        .supportedLocales; //todo test that AppLocalization.supportedLocales.length == LocaleHelper.supportedLocaleNames.length
    final chosenIndex = chosenLocale != null
        ? supportedLocales.indexOf(chosenLocale!) + 1
        : 0; //todo double-check, maybe I need to split up lang, then country
    return AlertDialog(
      title: Text(AppLocalizations.of(context)!.txtLanguage),
      content: SizedBox(
        width: LayoutXL.cols6.width,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: supportedLocales.length + 1,
          itemBuilder: (BuildContext context, int index) {
            final itemLocale = index == 0 ? null : supportedLocales[index - 1];
            return RadioListTile<int?>(
              value: index,
              groupValue: chosenIndex,
              title: Text(itemLocale == null
                  ? AppLocalizations.of(context)!.txtUseSystemLanguage
                  : (UILocaleHelper.supportedLocaleNames[itemLocale] ??
                      itemLocale.toLanguageTag())),
              onChanged: (int? newIndex) {
                if (newIndex != null) {
                  final preferredLocale =
                      newIndex == 0 ? null : supportedLocales[newIndex - 1];
                  localeNotifier.setPreferredLocale(preferredLocale);
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
