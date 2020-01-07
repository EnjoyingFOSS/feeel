// Copyright (C) 2020 Miroslav Mazel
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version. As an additional permission under
// section 7, you are allowed to distribute the software through an app
// store, even if that store has restrictive terms and conditions that
// are incompatible with the GPL, provided that the source is also
// available under the GPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'package:feeel/db/preference_keys.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:feeel/i18n/translations.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Future<SharedPreferences> _preferencesFuture;

  @override
  void initState() {
    super.initState();
    _preferencesFuture = SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings".i18n),
        ),
        body: FutureBuilder(
            future: _preferencesFuture,
            builder: (BuildContext context,
                AsyncSnapshot<SharedPreferences> snapshot) {
              if (snapshot.hasData) {
                SharedPreferences preferences = snapshot.data;
                return ListView(
                  children: <Widget>[
                    SwitchListTile.adaptive(
                      value: preferences.getBool(PreferenceKeys.TTS_ENABLED) ??
                          true,
                      title: Text("Enable TTS".i18n),
                      onChanged: (bool newValue) {
                        setState(() {
                          preferences.setBool(
                              PreferenceKeys.TTS_ENABLED, newValue);
                        });
                      },
                    )
                  ],
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}
