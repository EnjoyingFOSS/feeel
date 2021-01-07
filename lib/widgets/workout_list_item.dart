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

import 'package:feeel/enums/workout_category.dart';
import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/workout_listed.dart';
import 'package:feeel/screens/workout_detail.dart';
import 'package:feeel/widgets/triangle.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class WorkoutListItem extends StatelessWidget {
  final Widget? trailing;
  final WorkoutListed workoutListed;

  const WorkoutListItem(this.workoutListed, {Key? key, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = workoutListed.title;
    var subtitle = workoutListed.category.translationKey.i18n;

    return Material(
        color: Theme.of(context).backgroundColor,
        child: // Row(children: [
            InkWell(
                onTap: () {
                  Navigator.push<void>(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return WorkoutDetailScreen(workoutListed: workoutListed);
                  }));
                },
                child: Container(
                    height: 112,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Padding(
                          child: Triangle(
                            dimension: 96,
                            color: Color(workoutListed.category.colorInt)
                                .withAlpha(38),
                            seed: title.hashCode,
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(16, 8, 40, 8),
                            child: Column(
                              children: [
                                Text(
                                    (workoutListed.type == WorkoutType.DEFAULT)
                                        ? title.i18n
                                        : title,
                                    style:
                                        Theme.of(context).textTheme.headline6),
                                Container(
                                  height: 8,
                                ),
                                Text(
                                  subtitle,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Color(
                                              workoutListed.category.colorInt)),
                                )
                              ],
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                            )),
                        if (trailing != null)
                          Align(
                              alignment: Alignment.centerRight, child: trailing)
                      ],
                      alignment: AlignmentDirectional.centerStart,
                    )))
        //])
        );
  }
}
