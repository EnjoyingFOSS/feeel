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
import 'package:feeel/screens/activity/components/workout_donut_chart.dart';
import 'package:feeel/screens/activity/components/workout_record_util.dart';
import 'package:feeel/utils/locale_util.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ActivityCalendar extends StatelessWidget {
  final DateTime focusedDay;
  final Function(DateTime, DateTime) onDaySelected;
  final List<WorkoutRecord> Function(DateTime) eventLoader;

  const ActivityCalendar(
      {super.key,
      required this.focusedDay,
      required this.onDaySelected,
      required this.eventLoader});

  @override
  Widget build(BuildContext context) {
    final calendarStyle = CalendarStyle(
        disabledTextStyle: TextStyle(
            color: Theme.of(context).colorScheme.onBackground.withAlpha(79)),
        outsideTextStyle: TextStyle(
            color: Theme.of(context).colorScheme.onBackground.withAlpha(79)),
        weekendTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
        todayTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
        todayDecoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          shape: BoxShape.circle,
        ),
        selectedTextStyle: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.bold),
        selectedDecoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          shape: BoxShape.circle,
        ));
    return TableCalendar<WorkoutRecord>(
      daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle:
              TextStyle(color: Theme.of(context).colorScheme.onBackground),
          weekendStyle:
              TextStyle(color: Theme.of(context).colorScheme.onBackground)),
      locale: LocaleUtil.basicBcp47ToCLDR(
          Localizations.localeOf(context).toLanguageTag()),
      availableGestures: AvailableGestures.horizontalSwipe,
      calendarStyle: calendarStyle,
      onDaySelected: onDaySelected,
      eventLoader: eventLoader,
      selectedDayPredicate: (day) => isSameDay(focusedDay, day),
      availableCalendarFormats: const {
        CalendarFormat.month: ''
      }, //TODO add 2-week format
      startingDayOfWeek: _getStartingDayOfWeek(context),
      focusedDay: focusedDay,
      firstDay: DateTime(2023, 1, 1),
      lastDay: DateTime.now().add(const Duration(days: 1)),
      calendarBuilders: CalendarBuilders(
        markerBuilder: (context, day, events) {
          return SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: WorkoutDonutChart(
                  secondsByWorkoutCategory:
                      WorkoutRecordUtil.calcSecondsByWorkoutCategory(
                          events))); // TODO cache this calculation
        },
      ),
    );
  }

  StartingDayOfWeek _getStartingDayOfWeek(BuildContext context) {
    switch (MaterialLocalizations.of(context).firstDayOfWeekIndex) {
      case 1:
        return StartingDayOfWeek.monday;
      case 0:
        return StartingDayOfWeek.sunday;
      case 6:
        return StartingDayOfWeek.saturday;
      case 5:
        return StartingDayOfWeek.friday;
      case 4:
        return StartingDayOfWeek.thursday;
      case 3:
        return StartingDayOfWeek.wednesday;
      case 2:
        return StartingDayOfWeek.tuesday;
      default:
        throw ArgumentError.value(
            MaterialLocalizations.of(context).firstDayOfWeekIndex,
            "Unknown weekday (from MaterialLocalizations.of(context).firstDayOfWeekIndex)");
    }
  }
}
