// Copyright (C) 2019 Miroslav Mazel
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'dart:io';

import 'package:flutter_tts/flutter_tts.dart';

enum TtsState { playing, stopped }

class TTSHelper {
  TTSHelper._();
  static final TTSHelper tts = TTSHelper._();
  static final FlutterTts _flutterTts = FlutterTts();

  dynamic languages;
  dynamic voices;
  TtsState ttsState = TtsState.stopped; //todo see if I need this

  init() {
    if (Platform.isAndroid) {
      _flutterTts.ttsInitHandler(() {
        _getLanguages();
        _getVoices();
      });
    } else if (Platform.isIOS) {
      _getLanguages();
      _getVoices();
    }

    _flutterTts.setStartHandler(() {
      ttsState = TtsState.playing;
    });

    _flutterTts.setCompletionHandler(() {
      ttsState = TtsState.stopped;
    });

    _flutterTts.setErrorHandler((msg) {
      ttsState = TtsState.stopped;
    });
  }

  Future _getLanguages() async {
    languages = await _flutterTts.getLanguages;
  }

  Future _getVoices() async {
    voices = await _flutterTts.getVoices;
  }

  Future speak(String message) async {
    if (message != null && message.isNotEmpty) {
      if (ttsState == TtsState.playing) await _flutterTts.stop();
      var result = await _flutterTts.speak(message);
      if (result == 1) ttsState = TtsState.playing;
    }
  }

  Future stop() async {
    var result = await _flutterTts.stop();
    if (result == 1) ttsState = TtsState.stopped;
  }
}
