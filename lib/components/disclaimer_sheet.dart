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

import 'package:feeel/db/preference_keys.dart';
import 'package:feeel/theming/feeel_grid.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/asset_util.dart';

class DisclaimerSheet extends StatelessWidget {
  const DisclaimerSheet({Key? key}) : super(key: key);

  static void showSheet(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      showModalBottomSheet<void>(
          isDismissible: false,
          enableDrag: false,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (context) => const DisclaimerSheet(),
          context: context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final fgColor = Theme.of(context).colorScheme.onSurface;
    final bgColor = Theme.of(context).colorScheme.surface;

    return CustomScrollView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Stack(alignment: Alignment.bottomCenter, children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 64,
                  color: bgColor,
                )),
            Image.asset(
              AssetUtil.getImagePath("image_volunteer_heart.webp"),
              width: 128,
            ),
          ]),
          Container(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).padding.left + 16,
                  16,
                  MediaQuery.of(context).padding.right + 16,
                  MediaQuery.of(context).padding.bottom + 16),
              color: bgColor,
              width: double.infinity,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.txtCommunityDrivenHeader,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: LayoutXL.cols8.width),
                        child: Text(
                          AppLocalizations.of(context)!.txtDisclaimerContent,
                          style: TextStyle(color: fgColor),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    TextButton(
                      onPressed: () async {
                        final navigator = Navigator.of(context);
                        final prefs = await SharedPreferences.getInstance();
                        prefs.setBool(PreferenceKeys.showDisclaimer, false);
                        navigator.pop();
                      },
                      child: Text(AppLocalizations.of(context)!.btnIunderstand),
                    )
                  ]))
        ])),
      ],
    );
    // },
    // );
  }
}
