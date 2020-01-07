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
import 'package:flutter/widgets.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/i18n/translations.dart';

class WorkoutCover extends StatelessWidget {
  final Color color;
  final Workout workout;
  final Function onPressed;

  WorkoutCover(
      {Key key, @required this.workout, @required this.color, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          BackButton(
            color: color,
          ),
          Expanded(
// todo child: CustomScrollView(slivers: <Widget>[
//   SliverList(
//                     delegate: SliverChildBuilderDelegate(
//                       (context, index) {
//                         return WorkoutListItem(workoutsListed[index],
//                             onDelete: () {
//                           setState(() {
//                             DBHelper.db.deleteCustomWorkout(
//                                 workoutsListed[index].dbId);
//                           });
//                         }, onEdit: () {
//                           setState(() {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => WorkoutEditorScreen(
//                                           workoutListed: workoutsListed[index],
//                                         )));
//                           });
//                         });
//                       },
//                       childCount: workoutsListed.length,
//                     ),
//                   )
// ],)

              child: Center(
                  child: Text(
            workout.title.i18n,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.w900, color: color),
          ))),
          Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: FloatingActionButton.extended(
                    icon: Icon(Icons.play_arrow),
                    label: Text("Start workout".i18n),
                    onPressed: onPressed,
                    backgroundColor: color,
                  )))
        ]));
  }
}
