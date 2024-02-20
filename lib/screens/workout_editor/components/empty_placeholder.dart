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

import 'package:flutter/material.dart';

class EmptyPlaceholder extends StatelessWidget {
  final Widget header;
  final Widget subheader;
  final Widget child;
  final String heading;
  final String subheading;
  final String? errorMessage;

  const EmptyPlaceholder({
    Key? key,
    required this.header,
    required this.subheader,
    required this.child,
    required this.heading,
    required this.subheading,
    this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        header,
        subheader,
        Expanded(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 320),
                  child: child,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
                child: Text(heading,
                    style: Theme.of(context).textTheme.headlineSmall),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(subheading,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onBackground
                              .withAlpha(162)))),
              if (errorMessage != null)
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: Text(errorMessage!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.error))),
            ]))
      ],
    );
  }
}
