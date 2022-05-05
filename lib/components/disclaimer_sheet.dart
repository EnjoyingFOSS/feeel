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

import 'package:feeel/db/preference_keys.dart';
import 'package:flutter/material.dart';

import 'package:feeel/i18n/translations.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../db/asset_helper.dart';

class DisclaimerSheet extends StatelessWidget {
  const DisclaimerSheet({Key? key}) : super(key: key);

  static void showSheet(BuildContext context) {
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      showModalBottomSheet<void>(
          isDismissible: false,
          enableDrag: false,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (context) => DisclaimerSheet(),
          context: context);
    });
  }

  @override
  Widget build(BuildContext context) {
    //todo make this themable
    // return DraggableScrollableSheet(
    //   expand: false,
    //   initialChildSize: 0.6,
    //   minChildSize: 0.6,
    //   snap: true,
    //   snapSizes: const [0.6, 1.0], //todo 0 needed?
    //   builder: (BuildContext context, ScrollController scrollController) {
    final fgColor = Theme.of(context).colorScheme.onBackground;
    final bgColor = Theme.of(context).colorScheme.background;

    return CustomScrollView(
      shrinkWrap: true,
      // controller: scrollController,
      physics: ClampingScrollPhysics(),
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Stack(alignment: Alignment.bottomCenter, children: [
            Align(
                alignment: Alignment.bottomCenter,
                // child: FractionallySizedBox(
                //   heightFactor: 0.5,
                //   widthFactor: 1.0,
                child: Container(
                  height: 64,
                  color: bgColor,
                  // ),
                )),
            Image.asset(
              AssetHelper.getImage("image_volunteer_heart.webp"),
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
                      "Feeel is a volunteer-driven project".i18n,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Container(
                      height: 8,
                    ),
                    ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 600),
                        child: Text(
                          "Exercises and workouts are volunteer-contributed. Neither Feeel nor any volunteer is responsible for the correctness of any info in this app or for your health. Use at your own discretion."
                              .i18n,
                          style: TextStyle(color: fgColor),
                        )),
                    Container(
                      height: 16,
                    ),
                    TextButton(
                      onPressed: () async {
                        //todo set a setting here
                        final prefs = await SharedPreferences.getInstance();
                        prefs.setBool(
                            PreferenceKeys.SHOW_DISCLAIMER_PREF, false);
                        Navigator.of(context).pop();
                      },
                      child: Text("I understand".i18n),
                    )
                  ]))
        ])),
      ],
    );
    // },
    // );
  }
}
