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

import 'package:about/about.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:feeel/db/notification_helper.dart';
import 'package:feeel/db/preference_keys.dart';
import 'package:feeel/widgets/theme_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:feeel/theming/theme_mode_extensions.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsBundle {
  final SharedPreferences preferences;
  final AdaptiveThemeMode? themeMode;

  _SettingsBundle(this.preferences, this.themeMode);
}

class _SettingsScreenState extends State<SettingsScreen> {
  late Future<_SettingsBundle> _preferencesFuture;
  static const _DEFAULT_NOTIFICATION_TIME = TimeOfDay(hour: 20, minute: 10);
  AdaptiveThemeMode? curTheme;

  @override
  void initState() {
    super.initState();
    _preferencesFuture = _getSettingsBundle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            "Settings".i18n,
          ),
        ),
        body: FutureBuilder(
            future: _preferencesFuture,
            builder: (BuildContext context,
                AsyncSnapshot<_SettingsBundle> snapshot) {
              if (snapshot.hasData) {
                final settingsBundle = snapshot.data!;
                final notificationTime = NotificationHelper.timeFromInt(
                    settingsBundle.preferences
                        .getInt(PreferenceKeys.NOTIFICATION_TIME_PREF));
                curTheme = settingsBundle.themeMode;
                return ListView(
                  children: <Widget>[
                    SwitchListTile.adaptive(
                      value: settingsBundle.preferences
                              .getBool(PreferenceKeys.TTS_DISABLED_PREF) ??
                          false,
                      title: Text("Use sounds instead of speech".i18n),
                      onChanged: (bool newValue) {
                        setState(() {
                          settingsBundle.preferences.setBool(
                              PreferenceKeys.TTS_DISABLED_PREF, newValue);
                        });
                      },
                    ),
                    SwitchListTile.adaptive(
                      value: notificationTime != null,
                      title: Text("Remind me to exercise daily".i18n),
                      onChanged: (bool newValue) {
                        _setNotificationTime(
                            context,
                            newValue ? _DEFAULT_NOTIFICATION_TIME : null,
                            settingsBundle.preferences);
                      },
                    ),
                    if (notificationTime != null)
                      ListTile(
                        title: Text("Notification time".i18n),
                        trailing: Text(notificationTime.format(context)),
                        onTap: () async {
                          var selectedTime = await showTimePicker(
                              context: context, initialTime: notificationTime);
                          if (selectedTime != null) {
                            _setNotificationTime(context, selectedTime,
                                settingsBundle.preferences);
                          }
                        },
                      ),
                    ListTile(
                      title: Text("Theme".i18n),
                      subtitle: Text(curTheme?.uiName().i18n ?? ""),
                      onTap: () async {
                        await showDialog<void>(
                            context: context,
                            builder: (context) =>
                                ThemeDialog(curTheme: curTheme));
                        setState(() {
                          _preferencesFuture = _getSettingsBundle();
                        });
                      },
                    ),
                    ListTile(
                      title: Text("About Feeel".i18n),
                      onTap: _showAboutScreen,
                    )
                  ],
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }

  void _showAboutScreen() {
    showAboutPage(
      context: context,
      applicationLegalese: "Copyright © Miroslav Mazel et al., {{ year }}",
      applicationDescription: const Text(
          "An open-source home workout app that respects your privacy"),
      children: <Widget>[
        MarkdownPageListTile(
          icon: Icon(Icons.local_library),
          title: Text('Readme'),
          filename: 'README.md', //todo fix
        ),
        LicensesPageListTile(
            icon: Icon(Icons.library_books),
            title: Text("Licenses (autogenerated)".i18n)),
        ListTile(
          leading: Icon(Icons.code),
          title: Text("Source code"),
          onTap: () => launch("https://gitlab.com/enjoyingfoss/feeel"),
        )
        // todo donate, gitlab, changelog
      ],
      applicationIcon: const SizedBox(
        width: 100,
        height: 100,
        child: Image(
          image: AssetImage('assets/icon_android_legacy.png'),
        ),
      ),
    );
  }

  void _setNotificationTime(BuildContext context, TimeOfDay? timeOfDay,
      SharedPreferences preferences) {
    setState(() {
      if (timeOfDay == null) {
        preferences.remove(PreferenceKeys.NOTIFICATION_TIME_PREF);
        NotificationHelper.helper.setNotification(context, null);
      } else {
        preferences.setInt(PreferenceKeys.NOTIFICATION_TIME_PREF,
            NotificationHelper.timeToInt(timeOfDay));
        NotificationHelper.helper.setNotification(context, timeOfDay);
      }
    });
  }

  Future<_SettingsBundle> _getSettingsBundle() async {
    final preferences = await SharedPreferences.getInstance();
    final themeMode = await AdaptiveTheme.getThemeMode();
    return _SettingsBundle(preferences, themeMode);
  }
}
