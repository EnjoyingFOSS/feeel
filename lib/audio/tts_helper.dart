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

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:i18n_extension/i18n_widget.dart';

enum _TtsState { PLAYING, STOPPED }

class TTSHelper {
  TTSHelper._();
  static final tts = TTSHelper._();
  static final _flutterTts = FlutterTts();

  _TtsState ttsState = _TtsState.STOPPED; //todo see if I need this

  void init(BuildContext context) async {
    // todo set to current language ONLY IF translations are available; _flutterTts.setLanguage(Localizations.localeOf(context).languageCode);
    _flutterTts.setStartHandler(() {
      ttsState = _TtsState.PLAYING;
    });

    _flutterTts.setCompletionHandler(() {
      ttsState = _TtsState.STOPPED;
    });

    _flutterTts.setErrorHandler((dynamic msg) {
      ttsState = _TtsState.STOPPED;
    });

    _initLanguage(context);
  }

  void _initLanguage(BuildContext context) async {
    final curLanguage = I18n.language;
    final isLanguageAvailable =
        await _flutterTts.isLanguageAvailable(curLanguage) as bool;

    if (isLanguageAvailable)
      _flutterTts.setLanguage(curLanguage);
    else
      _flutterTts.setLanguage(I18n.defaultLocale.toLanguageTag());
  }

  Future speak(String message) async {
    if (message.isNotEmpty) {
      if (ttsState == _TtsState.PLAYING) await _flutterTts.stop();
      dynamic result = await _flutterTts.speak(message);
      if (result == 1) ttsState = _TtsState.PLAYING;
    }
  }

  Future stop() async {
    dynamic result = await _flutterTts.stop();
    if (result == 1) ttsState = _TtsState.STOPPED;
  }
}
