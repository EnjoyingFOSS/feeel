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

// import 'package:feeel/screens/activity/activity_screen.dart';
import 'package:feeel/screens/settings/settings.dart';
import 'package:feeel/screens/workout_list/workout_list.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class HomePagerScreen extends StatefulWidget {
  const HomePagerScreen({super.key});

  @override
  State<HomePagerScreen> createState() => _HomePagerScreenState();
}

class _HomePagerScreenState extends State<HomePagerScreen> {
  final _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //todo do I need SafeArea here?
        backgroundColor: Theme.of(context).colorScheme.background,
        bottomNavigationBar: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            selectedIndex: _currentPage,
            destinations: [
              NavigationDestination(
                  icon: const Icon(
                    Icons.home,
                  ),
                  selectedIcon: Icon(
                    Icons.home,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  label: "Home".i18n),
              NavigationDestination(
                  icon: const Icon(
                    Icons.history,
                  ),
                  selectedIcon: Icon(
                    Icons.history,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  label: "Your activity".i18n),
              NavigationDestination(
                  icon: const Icon(
                    Icons.settings,
                  ),
                  selectedIcon: Icon(
                    Icons.settings,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  label: "Settings".i18n)
            ],
            onDestinationSelected: (pagePos) {
              _controller.animateToPage(pagePos,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn);
              setState(() {
                _currentPage = pagePos;
              });
            }),
        body: PageView(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            WorkoutListScreen(),
            // ActivityScreen(),
            SettingsScreen()
          ],
        ));
  }
}
