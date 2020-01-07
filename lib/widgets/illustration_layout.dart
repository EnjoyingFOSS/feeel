// Copyright (C) 2020 Miroslav Mazel
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

class IllustrationLayout extends StatelessWidget {
  static const double BOTTOM_PADDING = 16;
  final Widget illustrationImage;
  final Widget illustrationTitle;
  final bool arrowUp;

  final Color color;

  const IllustrationLayout(
      {Key key,
      this.color,
      this.illustrationImage,
      this.illustrationTitle,
      this.arrowUp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bottomViewPadding = MediaQuery.of(context).viewPadding.bottom;
    return Column(children: [
      Expanded(
          child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: color,
                height: MediaQuery.of(context).size.width * 0.372,
              )),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: illustrationImage))
        ],
      )),
      Container(
        child: Container(
          height: 144,
          alignment: Alignment.bottomCenter,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              arrowUp ? Icons.expand_less : Icons.expand_more,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            illustrationTitle
          ]), //todo make illustrationTitle responsive
          width: double.infinity,
        ),
        color: color,
        padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: bottomViewPadding > BOTTOM_PADDING
                ? bottomViewPadding
                : BOTTOM_PADDING),
      )
    ]);
  }
}
