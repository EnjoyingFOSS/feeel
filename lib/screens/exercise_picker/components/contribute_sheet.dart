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

import 'package:feeel/theming/feeel_grid.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:feeel/utils/locale_util.dart';
import 'package:feeel/utils/url_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContributeSheet extends StatelessWidget {
  const ContributeSheet({super.key});

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
    final mediaPadding = MediaQuery.paddingOf(context);

    final bgColor = Theme.of(context).colorScheme.surface;
    final narrowLayout = _isNarrowLayout(context);
    final curLocale = Localizations.localeOf(context);
    final wgerLangBit = LocaleUtil.wgerSupportsLocale(curLocale)
        ? curLocale.languageCode
        : "en";
    final wgerSentenceSplit =
        AppLocalizations.of(context)!.txtContributeViaWger.split("**");
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
                      ImageAsset.wgerLogo.getPath(),
                      width: 128,
                    ),
                  ]))),
          Container(
              padding: EdgeInsets.fromLTRB(
                  mediaPadding.left + 16,
                  16,
                  mediaPadding.right + 16,
                  mediaPadding.bottom + 16),
              color: bgColor,
              width: double.infinity,
              alignment: Alignment.center,
              child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: LayoutXL.cols8.width),
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
                                        AppLocalizations.of(context)!
                                            .txtSubmitNewExercise,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
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
                                        "\n\n${AppLocalizations.of(context)!.txtWger21Days}")
                              ]),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        if (narrowLayout)
                          ElevatedButton(
                              onPressed: () => URLUtil.launchURL(context,
                                  "https://wger.de/$wgerLangBit/user/registration"),
                              child: Text(
                                  AppLocalizations.of(context)!.btnWgerSignUp)),
                        if (narrowLayout)
                          const SizedBox(
                            height: 8,
                          ),
                        if (narrowLayout)
                          OutlinedButton(
                              onPressed: () => URLUtil.launchURL(context,
                                  "https://wger.de/$wgerLangBit/user/login"),
                              child: Text(
                                  AppLocalizations.of(context)!.btnWgerLogIn)),
                        if (!narrowLayout) //TODO the CTA should be one button to a page with guidelines
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                    onPressed: () => URLUtil.launchURL(context,
                                        "https://wger.de/$wgerLangBit/user/registration"),
                                    child: Text(AppLocalizations.of(context)!
                                        .btnWgerSignUp)),
                                const SizedBox(
                                  width: 8,
                                ),
                                OutlinedButton(
                                    onPressed: () => URLUtil.launchURL(
                                        context,
                                        AppLocalizations.of(context)!
                                            .btnWgerLogIn),
                                    child: Text(AppLocalizations.of(context)!
                                        .btnWgerLogIn))
                              ])
                      ])))
        ])),
      ],
    );
  }

  bool _isNarrowLayout(BuildContext context) =>
      MediaQuery.sizeOf(context).width <= 400;
}
