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

import 'package:feeel/audio/audio_helper.dart';
import 'package:feeel/utils/locale_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

enum _TtsState { playing, stopped }

class TTSHelper {
  static final tts = TTSHelper._();
  static final _flutterTts = FlutterTts();

  _TtsState _ttsState = _TtsState.stopped; //TODO see if I need this
  AudioPriority _formerPriority = AudioPriority.low;

  //TODO use provider, perhaps one for both available sound views?
  TTSHelper._() {
    _flutterTts.setStartHandler(() {
      _ttsState = _TtsState.playing;
    });

    _flutterTts.setCancelHandler(() {
      _ttsState = _TtsState.stopped;
    });

    _flutterTts.setCompletionHandler(() {
      _ttsState = _TtsState.stopped;
    });

    _flutterTts.setErrorHandler((dynamic msg) {
      _ttsState = _TtsState.stopped;
    });
  }

  Future<void> initLocale(Locale locale) async {
    final fullLocaleTag = locale.toLanguageTag();
    final isLanguageAvailable =
        await _flutterTts.isLanguageAvailable(fullLocaleTag) as bool;

    if (isLanguageAvailable) {
      _flutterTts.setLanguage(fullLocaleTag);
    } else {
      final languageTag = locale.languageCode;
      if (await _flutterTts.isLanguageAvailable(languageTag) as bool) {
        //TODO not sure if this is needed, not sure how the fallback mechanism works for TTS
        _flutterTts.setLanguage(languageTag);
      }
      _flutterTts.setLanguage(LocaleUtil.fallbackLocale.toLanguageTag());
    }
  }

  Future<void> speak(String message,
      {AudioPriority priority = AudioPriority.low}) async {
    //TODO PRIORITY DOESN't WORK BECAUSE OF ITS ASYNC NATURE — DEBUG!!!
    //TODO could just have speakPriority and speak functions here, maybe
    //TODO add priority
    if (message.isNotEmpty) {
      if (_ttsState == _TtsState.playing) {
        if (priority == AudioPriority.low &&
            _formerPriority == AudioPriority.high) {
          print("NO! $priority + $message");
          return;
        } else {
          print("YES! $priority + $message");
          await _flutterTts.stop();
        }
      } else {
        print("~~! $priority + $message");
      }
      _flutterTts.speak(message);

      _formerPriority = priority;
    }
  }

  Future<void> stop() async {
    _flutterTts.stop();
  }
}
