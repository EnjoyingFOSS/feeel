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

import 'package:feeel/screens/workout_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:feeel/i18n/translations.dart';

class NotificationHelper {
  static final NotificationHelper helper = NotificationHelper._();
  static const _NOTIFICATION_CHANNEL_ID = "exercise_reminder";
  static const _NOTIFICATION_INT_ID = 0;
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  NotificationHelper._() {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  }

  void init(BuildContext context) {
    // todo look at example notification project

// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    var initializationSettingsAndroid =
        AndroidInitializationSettings('icon_notification');
    var initializationSettingsIOS = IOSInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false);
    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (String payload) async {
      //todo right?
      return await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WorkoutListScreen()),
      );
    });
  }

  void setNotification(BuildContext context, TimeOfDay? timeOfDay) async {
    await flutterLocalNotificationsPlugin.cancel(_NOTIFICATION_INT_ID);

    if (timeOfDay != null) {
      _requestIOSPermissions();

      var androidPlatformChannelSpecifics = AndroidNotificationDetails(
          _NOTIFICATION_CHANNEL_ID,
          "Daily notification".i18n,
          "A daily reminder to work out".i18n,
          color: Theme.of(context).primaryColor);
      var iOSPlatformChannelSpecifics = IOSNotificationDetails();
      var platformChannelSpecifics = NotificationDetails(
          android: androidPlatformChannelSpecifics,
          iOS: iOSPlatformChannelSpecifics);
      await flutterLocalNotificationsPlugin.showDailyAtTime(
          _NOTIFICATION_INT_ID,
          "Time to put on workout clothes!".i18n,
          "It takes just a few minutes to feel fresh and fit".i18n,
          Time(timeOfDay.hour, timeOfDay.minute),
          platformChannelSpecifics);
    }
  }

  void _requestIOSPermissions() {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  static TimeOfDay? timeFromInt(int? mins) =>
      mins != null ? TimeOfDay(hour: mins ~/ 60, minute: mins % 60) : null;

  static int timeToInt(TimeOfDay time) => time.hour * 60 + time.minute;
}
