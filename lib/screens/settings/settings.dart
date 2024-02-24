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

import 'package:device_info_plus/device_info_plus.dart';
import 'package:feeel/components/body_container.dart';
import 'package:feeel/db/preference_keys.dart';
import 'package:feeel/providers/locale_provider.dart';
import 'package:feeel/providers/theme_meta_provider.dart';
import 'package:feeel/screens/settings/components/language_dialog.dart';
import 'package:feeel/screens/settings/components/theme_dialog.dart';
import 'package:feeel/utils/asset_util.dart';
import 'package:feeel/utils/locale_util.dart';
// import 'package:feeel/screens/settings/components/import_export_tile.dart';
// import 'package:archive/archive_io.dart';
import 'package:feeel/utils/notification_helper.dart';
import 'package:feeel/utils/snackbar_helper.dart';
import 'package:feeel/utils/url_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsBundle {
  final SharedPreferences preferences;
  final bool onAndroidWithMaterialYou;

  _SettingsBundle(this.preferences, this.onAndroidWithMaterialYou);
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  late Future<_SettingsBundle> _preferencesFuture;

  @override
  void initState() {
    super.initState();
    _preferencesFuture =
        _getSettingsBundle(); //TODO use provider for preferences
  }

  @override
  Widget build(BuildContext context) {
    final themeMetaValue = ref.watch(themeMetaProvider);
    final themeMetaNotifier = ref.read(themeMetaProvider.notifier);
    final localeValue = ref.watch(localeProvider);

    return BodyContainer(
        child: FutureBuilder(
            future: _preferencesFuture,
            builder: (BuildContext context,
                AsyncSnapshot<_SettingsBundle> snapshot) {
              if (snapshot.hasData) {
                final settingsBundle = snapshot.data!;
                final notificationTime = Platform.isLinux
                    ? null
                    : NotificationHelper.timeFromInt(settingsBundle.preferences
                        .getInt(PreferenceKeys.notificationTime));
                final switchActiveColor = Theme.of(context).colorScheme.primary;
                return CustomScrollView(slivers: [
                  SliverAppBar(
                    title: Text(
                      AppLocalizations.of(context)!.txtSettings,
                    ),
                  ),
                  SliverList(
                      delegate: SliverChildListDelegate.fixed(
                    <Widget>[
                      if (!Platform.isLinux)
                        SwitchListTile.adaptive(
                            secondary: const Icon(Icons.music_note),
                            value: (settingsBundle.preferences
                                    .getBool(PreferenceKeys.ttsDisabled) ??
                                false),
                            title: Text(
                                AppLocalizations.of(context)!.btnDisableTTS),
                            onChanged: (bool newValue) {
                              setState(() {
                                settingsBundle.preferences.setBool(
                                    PreferenceKeys.ttsDisabled, newValue);
                              });
                            },
                            activeColor: switchActiveColor),
                      if (!Platform.isLinux)
                        SwitchListTile.adaptive(
                          secondary: const Icon(Icons.notifications),
                          value: notificationTime != null,
                          title:
                              Text(AppLocalizations.of(context)!.txtRemindMe),
                          onChanged: (bool setOn) {
                            _setNotificationTime(
                                context,
                                setOn ? _getDefaultNotificationTime() : null,
                                settingsBundle.preferences);
                          },
                          activeColor: switchActiveColor,
                        ),
                      if (notificationTime != null && Platform.isAndroid)
                        Padding(
                            padding: const EdgeInsets.only(left: 72, right: 16),
                            child: Text(
                              AppLocalizations.of(context)!
                                  .txtBatteryOptimization,
                              style: Theme.of(context).textTheme.bodySmall,
                            )),
                      if (notificationTime != null)
                        ListTile(
                          contentPadding:
                              const EdgeInsets.only(left: 72, right: 24),
                          title: Text(AppLocalizations.of(context)!
                              .txtNotificationTime),
                          subtitle: Text(notificationTime.format(context)),
                          onTap: () async {
                            final selectedTime = await showTimePicker(
                                context: context,
                                initialTime: notificationTime);
                            if (selectedTime != null) {
                              _setNotificationTime(context, selectedTime,
                                  settingsBundle.preferences);
                            }
                          },
                        ),
                      ListTile(
                        leading: const Icon(Icons.palette),
                        title: Text(AppLocalizations.of(context)!.txtTheme),
                        subtitle: Text(themeMetaValue.mode.getTranslation(
                            context)), //TODO say whether personalized or not
                        onTap: () async {
                          await showDialog<void>(
                              context: context,
                              builder: (context) =>
                                  ThemeDialog(themeMeta: themeMetaValue));
                          setState(() {
                            _preferencesFuture = _getSettingsBundle();
                          });
                        },
                      ),
                      if (settingsBundle.onAndroidWithMaterialYou ||
                          Platform.isLinux)
                        SwitchListTile.adaptive(
                            secondary: const SizedBox(),
                            title: Text(AppLocalizations.of(context)!
                                .txtPersonalizedColors),
                            value: themeMetaValue.personalized,
                            onChanged: (value) async {
                              themeMetaNotifier.setTheme(
                                  themeMetaValue.copyWith(personalized: value));
                            },
                            activeColor: switchActiveColor),
                      ListTile(
                        leading: const Icon(Icons.language),
                        title: Text(AppLocalizations.of(context)!.txtLanguage),
                        subtitle: Text(localeValue == null
                            ? AppLocalizations.of(context)!.txtUseSystemLanguage
                            : (LocaleUtil.supportedLocaleNames[localeValue] ??
                                localeValue.toLanguageTag())),
                        onTap: () async {
                          await showDialog<void>(
                              context: context,
                              builder: (context) =>
                                  LanguageDialog(chosenLocale: localeValue));
                          setState(() {
                            _preferencesFuture = _getSettingsBundle();
                          });
                        },
                      ),
                      // SwitchListTile.adaptive(
                      //     activeColor: switchActiveColor,
                      //     secondary: const Icon(Icons.wifi),
                      //     value: false //TODO
                      //     ,
                      //     title: Text(AppLocalizations.of(context)!
                      //         .txtExerciseUpdateFromWeb) //TODO translate
                      //     ,
                      //     onChanged: (_) => null //TODO
                      //     ),
                      // SwitchListTile.adaptive(
                      //     activeColor: switchActiveColor,
                      //     value: false //TODO
                      //     ,
                      //     contentPadding:
                      //         const EdgeInsets.only(left: 72, right: 16),
                      //     title: Text(AppLocalizations.of(context)!
                      //         .txtOnlyUpdateOverWifi) //TODO translate // limit downloads to wifi-only? only update on non-metered connections?
                      //     ,
                      //     onChanged: (_) => null //TODO
                      //     ),
                      ListTile(
                        leading: const Icon(Icons.volunteer_activism),
                        title:
                            Text(AppLocalizations.of(context)!.txtParticipate),
                        onTap: () => URLUtil.launchURL(context,
                            "https://gitlab.com/enjoyingfoss/feeel/-/wikis/Contributing"), //TODO should also change the text on the wiki page — at least the intro
                      ),
                      ListTile(
                        leading: const Icon(Icons.attach_money),
                        title: Text(AppLocalizations.of(context)!.txtDonate),
                        onTap: () => URLUtil.launchURL(
                            context, "https://liberapay.com/Feeel/"),
                      ),
                      ListTile(
                        leading: const Icon(Icons.code),
                        title:
                            Text(AppLocalizations.of(context)!.txtSourceCode),
                        onTap: () => URLUtil.launchURL(
                            context, "https://gitlab.com/enjoyingfoss/feeel/"),
                      ),
                      if (Platform.isLinux)
                        ListTile(
                          leading: const Icon(Icons.record_voice_over),
                          title: Text(
                              AppLocalizations.of(context)!.btnContributeTTS),
                          onTap: () => URLUtil.launchURL(context,
                              "https://github.com/dlutton/flutter_tts/issues/175"),
                        ),
                      ListTile(
                        leading: const Icon(Icons.info),
                        title:
                            Text(AppLocalizations.of(context)!.txtAboutFeeel),
                        onTap: _showAboutDialog,
                      ),
                    ],
                  ))
                ]);
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

  Future<void> _showAboutDialog() async {
    final packageInfo = await PackageInfo.fromPlatform();
    if (context.mounted) {
      showAboutDialog(
          context: context,
          applicationName: packageInfo.appName,
          applicationVersion: packageInfo.version,
          applicationIcon: SizedBox(
            width: 48,
            height: 48,
            child: Image(
              image: AssetImage(ImageAsset.icon.getPath()),
            ),
          ),
          applicationLegalese: "© Miroslav Mazel et al., 2021");
    }
    //TODO add app LICENSE info to LicenseRegistry + source code and donate items
  }

  void _setNotificationTime(BuildContext context, TimeOfDay? timeOfDay,
      SharedPreferences preferences) async {
    final l10n = AppLocalizations.of(context)!;
    if (timeOfDay == null) {
      final notificationUnset =
          await NotificationHelper.helper.setNotification(context, null);
      if (notificationUnset) {
        preferences.remove(PreferenceKeys.notificationTime);
      }
    } else {
      final scaffoldMessenger = ScaffoldMessenger.of(context);
      final notificationSet =
          await NotificationHelper.helper.setNotification(context, timeOfDay);
      if (notificationSet) {
        preferences.setInt(PreferenceKeys.notificationTime,
            NotificationHelper.timeToInt(timeOfDay));
      } else {
        SnackBarHelper.showInfoSnackBar(
            scaffoldMessenger, l10n.txtNotificationSystemSettingsPermission);
      }
    }
    setState(() {});
  }

  Future<_SettingsBundle> _getSettingsBundle() async {
    //TODO add language to bundle
    final onAndroidWithMaterialYou = Platform.isAndroid &&
        (await (DeviceInfoPlugin().androidInfo)).version.sdkInt >= 31;
    final preferences = await SharedPreferences.getInstance();
    return _SettingsBundle(preferences, onAndroidWithMaterialYou);
  }
}
