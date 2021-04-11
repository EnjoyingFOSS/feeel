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

import 'package:flutter/material.dart';

class EmptyPlaceholder extends StatelessWidget {
  final Widget header;
  final Widget image;
  final String heading;
  final String subheading;
  final String? errorMessage;

  const EmptyPlaceholder(
      {Key? key,
      required this.header,
      required this.image,
      required this.heading,
      required this.subheading,
      this.errorMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // todo singleChildScrollView, perhaps through the use of Centered or Flexible inside Column
      children: <Widget>[
        header,
        Spacer(), //todo is this the right way to center column content?
        SizedBox(
          child: image,
          width: 320,
        ),
        Padding(
          child: Text(heading,
              style: Theme.of(context)
                  .textTheme
                  .headline5),
          padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(subheading,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withAlpha(162)))),
        if (errorMessage != null)
          Padding(
              child: Text(errorMessage!,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: Theme.of(context).colorScheme.error)),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8)),
        Spacer()
      ],
    );
  }
}
