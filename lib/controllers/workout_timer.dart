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

import 'dart:async';

class WorkoutTimer {
  final Function onSecondDecrease;
  final Function onBreakpoint;
  final Function onDone;
  Timer? _timer;

  int _timeRemaining;
  int _nextBreakpoint;
  List<int>? breakpoints;
  int _breakpointPos = 0;

  WorkoutTimer(int totalTime,
      {this.breakpoints,
      required this.onSecondDecrease,
      required this.onBreakpoint,
      required this.onDone})
      : _timeRemaining = totalTime,
        _nextBreakpoint = totalTime - (breakpoints?.first ?? totalTime);

  int getTimeRemaining() => _timeRemaining;

  bool isRunning() => _timer != null;

  void reset(int totalTime, List<int>? breakpoints) {
    _timeRemaining = totalTime;
    _nextBreakpoint = totalTime - (breakpoints?.first ?? totalTime);
  }

  void _countSecond(Timer t) {
    _timeRemaining--;
    if (_timeRemaining <= _nextBreakpoint) {
      if (_nextBreakpoint <= 0) {
        // done
        onDone.call();
      } else {
        onSecondDecrease.call();

        if (breakpoints != null) {
          _breakpointPos++;
          if (_breakpointPos >= (breakpoints!.length)) {
            _breakpointPos = 0;
          }
          _nextBreakpoint = _timeRemaining - breakpoints![_breakpointPos];
        }

        if (_nextBreakpoint < 0) {
          _nextBreakpoint = 0;
        }

        onBreakpoint.call();
      }
    } else {
      onSecondDecrease.call();
    }
  }

  void start() {
    _timer ??= Timer.periodic(const Duration(seconds: 1), _countSecond);
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
  }
}
