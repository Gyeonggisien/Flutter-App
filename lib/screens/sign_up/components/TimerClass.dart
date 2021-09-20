import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class TimerClass extends StatefulWidget {
  const TimerClass({Key? key}) : super(key: key);

  @override
  _TimerClassState createState() => _TimerClassState();
}

class _TimerClassState extends State<TimerClass> {
  int endTime = 20;
  CountdownTimerController? controller;

  void onEnd() {
    print('timer ended.');
  }

  @override
  void initState() {
    super.initState();
    controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      widgetBuilder: (_, CurrentRemainingTime? time) {
        if (time == null) {
          return Text('');
        } else {
          print('${time.min} : ${time.milliseconds}');
          return Text(
              '==========${controller!.currentRemainingTime!.min!} : ${controller!.currentRemainingTime!.sec}==========');
        }
      },
      textStyle: Theme.of(context)
          .textTheme
          .headline4!
          .copyWith(color: kMainColor, fontSize: 15),
      controller: controller,
      endTime: endTime,
      endWidget: Text('end'),
    );
  }
}
