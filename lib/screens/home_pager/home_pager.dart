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

import 'dart:io';

import 'package:feeel/audio/tts_helper.dart';
import 'package:feeel/components/disclaimer_sheet.dart';
import 'package:feeel/components/navigation_pills.dart';
import 'package:feeel/db/preference_keys.dart';
import 'package:feeel/screens/home_pager/components/home_pageview.dart';
import 'package:feeel/theming/feeel_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePagerScreen extends StatefulWidget {
  const HomePagerScreen({super.key});

  @override
  State<HomePagerScreen> createState() => _HomePagerScreenState();
}

class _HomePagerScreenState extends State<HomePagerScreen> {
  final _controller = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    // TODO CHECK IF USER IS UPGRADING FROM < 3.0.0 AND ASK HIM IF TO ALLOW INTERNET (have it by default post-3.0.0, but still in settings)
    // TODO turn this screen into a stateless widget, use WidgetsBinding.instance.addPostFrameCallback((_) => yourFunction(context)) INSTEAD;
    SharedPreferences.getInstance().then((prefs) {
      //TODO is the initState method the right place for this?
      if (prefs.getBool(PreferenceKeys.showDisclaimer) ?? true) {
        DisclaimerSheet.showSheet(context);
      }
    });
    super.initState();
  }

  void _initLocaleDependentAppState(Locale locale) async {
    if (!Platform.isLinux) {
      //TODO SHOULDN'T INIT HERE! THIS IS AN UGLY HACK :( NEED TO TURN TTS INTO A PROVIDER
      await TTSHelper.tts.initLocale(
          locale); //TODO should really depend on whether the TTS preference is set
    }
  }

  @override
  Widget build(BuildContext context) {
    _initLocaleDependentAppState(Localizations.localeOf(context));

    final showPills =
        MediaQuery.sizeOf(context).width > FeeelGrid.breakpointXL;

    return Scaffold(
        //TODO do I need SafeArea here?
        backgroundColor: Theme.of(context).colorScheme.background,
        bottomNavigationBar: (!showPills)
            ? NavigationBar(
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                selectedIndex: _currentPage,
                onDestinationSelected: _onDestinationSelected,
                destinations: [
                  NavigationDestination(
                      icon: const Icon(Icons.home),
                      label: AppLocalizations.of(context)!.txtHome),
                  NavigationDestination(
                      icon: const Icon(Icons.history),
                      label: AppLocalizations.of(context)!.txtYourActivity),
                  NavigationDestination(
                      icon: const Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.txtSettings)
                ],
              )
            : NavigationPills(
                shadowColor: Theme.of(context).colorScheme.onBackground,
                elevation: 8,
                backgroundColor: Theme.of(context).colorScheme.surface,
                onDestinationSelected: _onDestinationSelected,
                selectedIndex: _currentPage,
                effectiveHeight: 64,
                children: [
                  NavigationPill(
                      icon: const Icon(Icons.home),
                      label: Text(AppLocalizations.of(context)!.txtHome)),
                  NavigationPill(
                      icon: const Icon(Icons.history),
                      label:
                          Text(AppLocalizations.of(context)!.txtYourActivity)),
                  NavigationPill(
                      icon: const Icon(Icons.settings),
                      label: Text(AppLocalizations.of(context)!.txtSettings))
                ],
              ),
        body: HomePageView(
          controller: _controller,
        ));
  }

  void _onDestinationSelected(int pagePos) {
    _controller.animateToPage(pagePos,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    setState(() {
      _currentPage = pagePos;
    });
  }
}
