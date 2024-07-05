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

import 'package:feeel/components/body_container.dart';
import 'package:feeel/db/database.dart';
import 'package:feeel/providers/db_provider.dart';
import 'package:feeel/providers/feeel_swatch_provider.dart';
import 'package:feeel/screens/activity/components/activity_calendar.dart';
import 'package:feeel/screens/activity/components/workout_record_list_item.dart';
import 'package:feeel/utils/format_util.dart';
import 'package:feeel/utils/locale_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class ActivityScreen extends ConsumerStatefulWidget {
  const ActivityScreen({super.key});

  @override
  ConsumerState<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends ConsumerState<ActivityScreen> {
  var _showUncompleted = false;
  late DateTime _focusedDay;

  @override
  void initState() {
    _focusedDay = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //TODO add to todo list: log by muscle over a given period (day, month, week)
    final colorSwatches = ref.read(feeelSwatchProvider);
    final db = ref.read(dbProvider);
    return BodyContainer(
      child: FutureBuilder(
          future: db
              .queryAllWorkoutRecords, //TODO maybe later query month by month?
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final localeCLDR =
                  LocaleUtil.basicBcp47ToCLDR(Localizations.localeOf(context));

              final workoutRecords = snapshot.data! as List<WorkoutRecord>;
              final workoutRecordsByDay = <DateTime,
                  List<
                      WorkoutRecord>>{}; //TODO maybe have this logic in the database instead?
              for (final workoutRecord in workoutRecords) {
                final day = DateTime(
                    workoutRecord.workoutStart.year,
                    workoutRecord.workoutStart.month,
                    workoutRecord.workoutStart.day);
                workoutRecordsByDay.putIfAbsent(
                    day, () => List<WorkoutRecord>.empty(growable: true));
                workoutRecordsByDay[day]?.add(workoutRecord);
              }

              final focusedDayWorkoutRecords = workoutRecordsByDay[DateTime(
                  _focusedDay.year, _focusedDay.month, _focusedDay.day)];
              focusedDayWorkoutRecords?.sort((a, b) =>
                  (a.completedDuration == a.workoutDuration ? 0 : 1).compareTo(
                      b.completedDuration == b.workoutDuration ? 0 : 1));
              final firstUncompletedIndex = focusedDayWorkoutRecords
                  ?.indexWhere((a) => a.completedDuration < a.workoutDuration);
              final containsUncompleted = firstUncompletedIndex != -1;

              final focusedDayUncompletedTime =
                  focusedDayWorkoutRecords != null &&
                          firstUncompletedIndex != null
                      ? _calcDayUncompletedTime(
                          focusedDayWorkoutRecords, firstUncompletedIndex)
                      : null;

              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                      title:
                          Text(AppLocalizations.of(context)!.txtYourActivity)),
                  SliverToBoxAdapter(
                      child: ActivityCalendar(
                    focusedDay: _focusedDay,
                    onDaySelected: ((selectedDay, _) =>
                        isSameDay(_focusedDay, selectedDay)
                            ? null
                            : setState(() {
                                _focusedDay = selectedDay;
                              })),
                    eventLoader: (day) =>
                        workoutRecordsByDay[
                            DateTime(day.year, day.month, day.day)] ??
                        [],
                  )),
                  SliverToBoxAdapter(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      height: 1,
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withAlpha(31),
                    ),
                  ),
                  SliverToBoxAdapter(
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                          child: Row(children: [
                            Text(
                              //TODO change the text for today and for future dates
                              _focusedDay.year == DateTime.now().year
                                  ? DateFormat.MMMd(localeCLDR)
                                      .format(_focusedDay)
                                  : DateFormat.yMMMd(localeCLDR)
                                      .format(_focusedDay),
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground
                                          .withOpacity(0.72)),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                                child: Text(
                              AppLocalizations.of(context)!
                                  .txtDurationOverXWorkouts(
                                      focusedDayWorkoutRecords?.length ?? 0,
                                      FormatUtil.getDuration(context, 42)),
                              textAlign: TextAlign.right,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ))
                          ]))),
                  if (focusedDayWorkoutRecords?.isNotEmpty ?? false)
                    SliverList(
                        delegate: SliverChildBuilderDelegate(
                            childCount: containsUncompleted
                                ? (_showUncompleted
                                    ? focusedDayWorkoutRecords!.length + 1
                                    : firstUncompletedIndex! + 1)
                                : focusedDayWorkoutRecords?.length ?? 0,
                            (_, i) {
                      final workoutRecord = !containsUncompleted
                          ? focusedDayWorkoutRecords![i]
                          : i < firstUncompletedIndex!
                              ? focusedDayWorkoutRecords![i]
                              : i > firstUncompletedIndex
                                  ? focusedDayWorkoutRecords![i - 1]
                                  : null;
                      if (workoutRecord != null) {
                        return WorkoutRecordListItem(workoutRecord,
                            colorSwatches[workoutRecord.category.feeelColor]!);
                      } else {
                        return ListTile(
                          title: Row(children: [
                            Expanded(
                                child: Text(_showUncompleted
                                    ? AppLocalizations.of(context)!
                                        .btnHideUncompletedWorkouts
                                    : AppLocalizations.of(context)!
                                        .btnShowNUncompletedWorkouts(
                                            focusedDayWorkoutRecords!.length -
                                                firstUncompletedIndex!))),
                            const SizedBox(width: 12),
                            Text(
                                FormatUtil.getDuration(
                                    context, focusedDayUncompletedTime!),
                                style: FormatUtil.durationTextStyle)
                          ]),
                          trailing: Icon(_showUncompleted
                              ? Icons.expand_less
                              : Icons.expand_more),
                          onTap: () => setState(() {
                            _showUncompleted = !_showUncompleted;
                          }),
                        );
                      }
                    }))
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
          }),
    );
  }

  int _calcDayUncompletedTime(
      List<WorkoutRecord> focusedDayWorkoutRecords, int firstUncompletedIndex) {
    var focusedDayUncompletedTime = 0;
    if (firstUncompletedIndex >= 0) {
      for (int i = firstUncompletedIndex;
          i < focusedDayWorkoutRecords.length;
          i++) {
        focusedDayUncompletedTime +=
            focusedDayWorkoutRecords[i].completedDuration;
      }
    }
    return focusedDayUncompletedTime;
  }
}
