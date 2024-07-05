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

import 'dart:io';

import 'package:feeel/screens/home_pager/home_pager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationHelper {
  //TODO use provider?
  static final NotificationHelper helper = NotificationHelper._();
  static const _notificationChannelId = "exercise_reminder";
  static const _notificationIntId = 0;
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  NotificationHelper._() {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  }

  void init(BuildContext context) async {
    tz.initializeTimeZones();
    tz.setLocalLocation(
        tz.getLocation(await FlutterNativeTimezone.getLocalTimezone()));

    const darwinInitialization = DarwinInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false);

    const initializationSettings = InitializationSettings(
        android: AndroidInitializationSettings('icon_notification'),
        iOS: darwinInitialization,
        macOS: darwinInitialization);
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: (_) async {
      return await Navigator.push<void>(
        context,
        MaterialPageRoute(builder: (context) => const HomePagerScreen()),
      );
    });
  }

  Future<bool> setNotification(
      BuildContext context, TimeOfDay? timeOfDay) async {
    final primaryColor = Theme.of(context).primaryColor;
    final l10n = AppLocalizations.of(context)!;

    await flutterLocalNotificationsPlugin.cancel(_notificationIntId);

    if (timeOfDay != null) {
      final notificationsAllowed = Platform.isAndroid
          ? await _requestAndroidPermissions()
          : Platform.isIOS
              ? await _requestIOSPermissions()
              : Platform.isMacOS
                  ? await _requestMacOSPermissions()
                  : false;

      if (!notificationsAllowed) {
        return false;
      }

      final platformChannelSpecifics = NotificationDetails(
          android: AndroidNotificationDetails(
              _notificationChannelId, l10n.txtNotificationInfoTitle,
              channelDescription: l10n.txtNotificationInfoDesc,
              color: primaryColor),
          iOS: const DarwinNotificationDetails(),
          macOS: const DarwinNotificationDetails());

      await flutterLocalNotificationsPlugin.zonedSchedule(
          _notificationIntId,
          l10n.txtNotificationTitle,
          l10n.txtNotificationDesc,
          _nextDailyInstance(Time(timeOfDay.hour, timeOfDay.minute)),
          platformChannelSpecifics,
          androidAllowWhileIdle: true,
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime,
          matchDateTimeComponents: DateTimeComponents.time);
    }

    return true;
  }

  tz.TZDateTime _nextDailyInstance(Time time) {
    final now = tz.TZDateTime.now(tz.local).add(const Duration(
        days: 1)); //TODO is this necessary with a daily notification?
    final tz.TZDateTime scheduledDate = tz.TZDateTime(
        tz.local, now.year, now.month, now.day, time.hour, time.minute);
    return scheduledDate;
  }

  Future<bool> _requestAndroidPermissions() async {
    return await flutterLocalNotificationsPlugin
            .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin>()!
            .requestPermission() ??
        false;
  }

  Future<bool> _requestIOSPermissions() async {
    return await flutterLocalNotificationsPlugin
            .resolvePlatformSpecificImplementation<
                IOSFlutterLocalNotificationsPlugin>()!
            .requestPermissions(
              alert: true,
              badge: true,
              sound: true,
            ) ??
        false;
  }

  Future<bool> _requestMacOSPermissions() async {
    return await flutterLocalNotificationsPlugin
            .resolvePlatformSpecificImplementation<
                MacOSFlutterLocalNotificationsPlugin>()!
            .requestPermissions(
              alert: true,
              badge: true,
              sound: true,
            ) ??
        false;
  }

  static TimeOfDay? timeFromInt(int? mins) =>
      mins != null ? TimeOfDay(hour: mins ~/ 60, minute: mins % 60) : null;

  static int timeToInt(TimeOfDay time) => time.hour * 60 + time.minute;
}
