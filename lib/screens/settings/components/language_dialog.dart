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

import 'package:feeel/providers/locale_provider.dart';
import 'package:feeel/theming/feeel_grid.dart';
import 'package:feeel/utils/locale_util.dart';
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
        .supportedLocales; //TODO test that AppLocalization.supportedLocales.length == LocaleHelper.supportedLocaleNames.length
    final chosenIndex = chosenLocale != null
        ? supportedLocales.indexOf(chosenLocale!) + 1
        : 0; //TODO double-check, maybe I need to split up lang, then country
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
                  : (LocaleUtil.supportedLocaleNames[itemLocale] ??
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
