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

import 'package:feeel/db/asset_helper.dart';
import 'package:feeel/utils/url_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:feeel/i18n/translations.dart';
import 'package:flutter/scheduler.dart';
import 'package:i18n_extension/i18n_widget.dart';

class ContributeSheet extends StatelessWidget {
  const ContributeSheet({super.key});

  static final _wgerSupportedLanguages = [
    "en",
    "de",
    "bg",
    "es",
    "ru",
    "nl",
    "pt",
    "el",
    "cs",
    "sv",
    "no",
    "fr",
    "it",
    "pl",
    "uk",
    "tr"
  ];

  static void showSheet(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      showModalBottomSheet<void>(
          isDismissible: true,
          enableDrag: true,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (context) => const ContributeSheet(),
          context: context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = Theme.of(context).colorScheme.background;
    final narrowLayout = _isNarrowLayout(context);
    final wgerLangBit =
        _wgerSupportedLanguages.contains(I18n.language) ? I18n.language : "en";
    final wgerSentenceSplit =
        "Exercises are contributed through **the wger website**, another open-source community project. In a future release, Feeel will incorporate all exercises from this website."
            .i18n
            .split("**");
    if (wgerSentenceSplit.length < 3) {
      wgerSentenceSplit.add("");
      wgerSentenceSplit.add("");
    }

    return CustomScrollView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                  color: Colors
                      .transparent, // used to make even the transparent areas clickable
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 64,
                          color: bgColor,
                        )),
                    Image.asset(
                      AssetHelper.getImage("wger-logo.webp"),
                      width: 128,
                    ),
                  ]))),
          Container(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).padding.left + 16,
                  16,
                  MediaQuery.of(context).padding.right + 16,
                  MediaQuery.of(context).padding.bottom + 16),
              color: bgColor,
              width: double.infinity,
              alignment: Alignment.center,
              child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Contribute".i18n,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      const Icon(Icons.expand_more)
                                    ]))),
                        const SizedBox(
                          height: 8,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyMedium,
                              children: [
                                TextSpan(text: wgerSentenceSplit[0]),
                                TextSpan(
                                    text: wgerSentenceSplit[1],
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            decoration:
                                                TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => URLUtil.launchURL(context,
                                          "https://wger.de/$wgerLangBit/exercise/overview/")),
                                TextSpan(text: wgerSentenceSplit[2]),
                                TextSpan(
                                    text:
                                        "\n\n${"Contributing via wger requires an account older than 21 days.".i18n}")
                              ]),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        if (narrowLayout)
                          ElevatedButton(
                              onPressed: () => URLUtil.launchURL(context,
                                  "https://wger.de/$wgerLangBit/user/registration"),
                              child: Text("Sign up for wger".i18n)),
                        if (narrowLayout)
                          const SizedBox(
                            height: 8,
                          ),
                        if (narrowLayout)
                          OutlinedButton(
                              onPressed: () => URLUtil.launchURL(context,
                                  "https://wger.de/$wgerLangBit/user/login"),
                              child: Text("Log in with wger".i18n)),
                        if (!narrowLayout)
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                    onPressed: () => URLUtil.launchURL(context,
                                        "https://wger.de/$wgerLangBit/user/registration"),
                                    child: Text("Sign up for wger".i18n)),
                                const SizedBox(
                                  width: 8,
                                ),
                                OutlinedButton(
                                    onPressed: () => URLUtil.launchURL(context,
                                        "https://wger.de/$wgerLangBit/user/login"),
                                    child: Text("Log in with wger".i18n))
                              ])
                      ])))
        ])),
      ],
    );
  }

  bool _isNarrowLayout(BuildContext context) =>
      MediaQuery.of(context).size.width <= 400;
}