import 'dart:async';

import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<TimerWidget> {
  Timer? _timer;
  int _start = 10;

  void startTimer() {
    const oneSec = const Duration(minutes: 3, seconds: 60);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          child: Text(
            "$_start",
            style: TextStyle(color: kMainColor),
          ),
          onPressed: () {
            startTimer();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kWhiteColor),
          ),
        ),
      ],
    );
  }
}
