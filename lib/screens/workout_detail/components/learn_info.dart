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

import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class LearnInfo extends StatelessWidget {
  //todo indicate when an exercise has steps
  final Color bgColor;
  final void Function() onTap;

  const LearnInfo({Key? key, required this.onTap, required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //todo make this possible to activate using the keyboard only!
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: onTap,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: bgColor,
              ),
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.expand_less, color: Colors.white),
                  Text(
                    "Learn the exercise".i18n,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.white),
                  )
                ], //todo size16 or 18
              ))),
    );
  }
}
