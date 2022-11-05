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

import 'package:feeel/db/database.dart';
import 'package:feeel/db/full_workout.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:provider/provider.dart';

import '../../../enums/workout_type.dart';

class EmptyWorkout extends StatelessWidget {
  final FullWorkout fullWorkout;

  const EmptyWorkout({Key? key, required this.fullWorkout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("There are no exercises in this workout. :(".i18n),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: Text("Back to workout list".i18n),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            if (fullWorkout.type == WorkoutType.custom)
              ElevatedButton(
                child: Text("Delete this workout".i18n),
                onPressed: () {
                  Provider.of<FeeelDB>(context)
                      .deleteWorkout(fullWorkout.workout.id);
                  Navigator.pop(context);
                },
              )
          ],
        )
      ],
    ));
  }
}
