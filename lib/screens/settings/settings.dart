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

import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
// import 'package:archive/archive_io.dart';
import 'package:feeel/db/notification_helper.dart';
import 'package:feeel/db/preference_keys.dart';
import 'package:feeel/screens/settings/components/theme_dialog.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:feeel/theming/theme_mode_extensions.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsBundle {
  final SharedPreferences preferences;
  final AdaptiveThemeMode? themeMode;

  _SettingsBundle(this.preferences, this.themeMode);
}

class _SettingsScreenState extends State<SettingsScreen> {
  late Future<_SettingsBundle> _preferencesFuture;

  @override
  void initState() {
    super.initState();
    _preferencesFuture =
        _getSettingsBundle(); //todo use provider for preferences
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                final notificationTime = Platform.isLinux
                    ? null
                    : NotificationHelper.timeFromInt(settingsBundle.preferences
                        .getInt(PreferenceKeys.notificationTimePref));
                final curTheme = settingsBundle.themeMode;
                final activeColor = Theme.of(context).colorScheme.primary;
                return ListView(
                  children: <Widget>[
                    if (!Platform.isLinux)
                      SwitchListTile.adaptive(
                          secondary: const Icon(Icons.music_note),
                          value: (settingsBundle.preferences
                                  .getBool(PreferenceKeys.ttsDisabledPref) ??
                              false),
                          title: Text("Sounds instead of voice".i18n),
                          onChanged: (bool newValue) {
                            setState(() {
                              settingsBundle.preferences.setBool(
                                  PreferenceKeys.ttsDisabledPref, newValue);
                            });
                          },
                          activeColor: activeColor),
                    if (!Platform.isLinux)
                      SwitchListTile.adaptive(
                        secondary: const Icon(Icons.notifications),
                        value: notificationTime != null,
                        title: Text("Daily reminder".i18n),
                        onChanged: (bool setOn) {
                          _setNotificationTime(
                              context,
                              setOn ? _getDefaultNotificationTime() : null,
                              settingsBundle.preferences);
                        },
                        activeColor: activeColor,
                      ),
                    if (notificationTime != null && Platform.isAndroid)
                      Padding(
                          padding: const EdgeInsets.only(left: 72, right: 16),
                          child: Text(
                            "On some devices, you may need to disable battery optimization for Feeel for this to work reliably."
                                .i18n,
                            style: Theme.of(context).textTheme.caption,
                          )),
                    if (notificationTime != null)
                      ListTile(
                        contentPadding:
                            const EdgeInsets.only(left: 72, right: 24),
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
                      leading: const Icon(Icons.palette),
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
                    // todo import export ListTile(
                    //   leading: Icon(Icons.download),
                    //   title: Text("Export custom workouts"
                    //       .i18n), //todo figure out how to focus dialogs right away
                    //   onTap: () async {
                    //     //todo add try catch
                    //     final customWorkouts = await DBHelper.db
                    //         .queryFullWorkoutsByType(WorkoutType.CUSTOM);
                    //     if (customWorkouts == null) {
                    //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //           content: Text(
                    //               "You don't have any custom workouts".i18n)));
                    //     } else {
                    //       final export =
                    //           await WorkoutImportExport.exportWorkouts(
                    //               customWorkouts);
                    //       if (Platform.isMacOS || Platform.isLinux) {
                    //         final outputFile =
                    //             await FilePicker.platform.saveFile(
                    //           dialogTitle: "",
                    //           fileName: "Feeel workouts " +
                    //               formatDate(DateTime.now(), [
                    //                 yyyy,
                    //                 '-',
                    //                 mm,
                    //                 '-',
                    //                 dd,
                    //                 " (",
                    //                 HH,
                    //                 ';',
                    //                 nn,
                    //                 ")"
                    //               ]) +
                    //               ".feeel",
                    //         );
                    //         if (outputFile != null) {
                    //           await export.copy(outputFile);
                    //         }
                    //       } else {
                    //         Share.shareFiles([export.path]);
                    //       }
                    //     }
                    //   },
                    // ),
                    // ListTile(
                    //   leading: Icon(Icons.upload),
                    //   title: Text("Import workouts".i18n),
                    //   onTap: () async {
                    //     //todo add try catch
                    //     final pickedFiles = await FilePicker.platform.pickFiles(
                    //         type: FileType.any,
                    //         allowedExtensions: ["feeel"],
                    //         allowMultiple: false,
                    //         withReadStream: Platform.isLinux);

                    //     final filePath = pickedFiles?.files.first.path;

                    //     if (filePath == null) {
                    //       return;
                    //     } else {
                    //       showDialog<void>(
                    //           //todo try catch in case it's a corrupt/invalid file
                    //           context: context,
                    //           builder: (context) => AlertDialog(
                    //                 title: Text(
                    //                     "Duplicates will not be overriden"
                    //                         .i18n),
                    //                 content: Text(
                    //                     "If you import workouts that are identical to workouts you have in Feeel already, you will have those workouts twice in the app and will have to manually delete them."
                    //                         .i18n),
                    //                 actions: [
                    //                   TextButton(
                    //                       onPressed: () =>
                    //                           Navigator.of(context).pop(),
                    //                       child: Text("Cancel".i18n)),
                    //                   TextButton(
                    //                       onPressed: () {
                    //                         WorkoutImportExport.importWorkouts(
                    //                             InputFileStream(filePath));
                    //                         Navigator.of(context).pop();
                    //                       },
                    //                       child: Text("Import anyway".i18n))
                    //                 ],
                    //               ));
                    //     }
                    //   },
                    // ),
                    ListTile(
                      leading: const Icon(Icons.volunteer_activism),
                      title: Text("Participate".i18n),
                      onTap: () => _launchURL(
                          "https://gitlab.com/enjoyingfoss/feeel/-/wikis/home"),
                    ),
                    ListTile(
                      leading: const Icon(Icons.attach_money),
                      title: Text("Donate".i18n),
                      onTap: () => _launchURL("https://liberapay.com/Feeel/"),
                    ),
                    ListTile(
                      leading: const Icon(Icons.code),
                      title: Text("Source code".i18n),
                      onTap: () =>
                          _launchURL("https://gitlab.com/enjoyingfoss/feeel/"),
                    ),
                    ListTile(
                      leading: const Icon(Icons.info),
                      title: Text("About Feeel".i18n),
                      onTap: _showAboutDialog,
                    )
                  ],
                );
              } else {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              }
            }));
  }

  TimeOfDay _getDefaultNotificationTime() {
    final now = TimeOfDay.now();
    return TimeOfDay(hour: now.hour, minute: (now.minute ~/ 30) * 30);
  }

  void _launchURL(String url) async {
    await canLaunchUrl(Uri.parse(url))
        ? await launchUrl(Uri.parse(url))
        : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Could not open URL.".i18n),
          ));
  }

  void _showAboutDialog() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    showAboutDialog(
        context: context,
        applicationName: packageInfo.appName,
        applicationVersion: packageInfo.version,
        applicationIcon: const SizedBox(
          width: 48,
          height: 48,
          child: Image(
            image: AssetImage('assets/icon_generic.png'),
          ),
        ),
        applicationLegalese: "© Miroslav Mazel et al., 2021");
    //todo add app LICENSE info to LicenseRegistry + source code and donate items
  }

  void _setNotificationTime(BuildContext context, TimeOfDay? timeOfDay,
      SharedPreferences preferences) {
    setState(() {
      if (timeOfDay == null) {
        preferences.remove(PreferenceKeys.notificationTimePref);
        NotificationHelper.helper.setNotification(context, null);
      } else {
        preferences.setInt(PreferenceKeys.notificationTimePref,
            NotificationHelper.timeToInt(timeOfDay));
        NotificationHelper.helper.setNotification(context, timeOfDay);
      }
    });
  }

  Future<_SettingsBundle> _getSettingsBundle() async {
    //todo add language to bundle
    final preferences = await SharedPreferences.getInstance();
    final themeMode = await AdaptiveTheme.getThemeMode();
    return _SettingsBundle(preferences, themeMode);
  }
}
