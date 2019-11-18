import 'dart:async';

class WorkoutTimer {
  Function onSecondDecrease;
  Function onTimerZero;
  Timer _timer;

  int timeRemaining;

  WorkoutTimer(int initTime, {this.onSecondDecrease, this.onTimerZero}) {
    timeRemaining = initTime;
  }

  bool isRunning() => _timer != null;

  void _countSecond(Timer t) {
    if (timeRemaining == 1) {
      timeRemaining = 0;
      onTimerZero(); //todo does this yield a null exception if null?
    } else if (timeRemaining > 0) {
      timeRemaining--;
      onSecondDecrease(); //todo does this yield a null exception if null?
    }
  }

  void start() {
    if (_timer == null)
      _timer = Timer.periodic(Duration(seconds: 1), _countSecond);
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
  }
}
