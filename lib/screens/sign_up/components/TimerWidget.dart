import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<TimerWidget> with TickerProviderStateMixin {
  AnimationController? _controller;
  int levelClock = 180;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: levelClock),
    );

    _controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Countdown(
      animation: StepTween(
        begin: levelClock,
        end: 0,
      ).animate(_controller!),
    );
  }
}

class Countdown extends AnimatedWidget {
  Countdown({Key? key, required this.animation})
      : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  Widget build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);
    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

    // 혹시 타이머가 작동하지 않으면 사용할 테스트 코드
    /*
    print('animation.value ${animation.value} ');
    print('inMinutes ${clockTimer.inMinutes.toString()}');
    print('inSeconds ${clockTimer.inSeconds.toString()}');
    print('inSeconds.remainder ${clockTimer.inSeconds.remainder(60).toString()}');
    */
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.4),
      child: Text(
        '$timerText',
        style: TextStyle(
          fontSize: 15,
          color: kMainColor,
        ),
      ),
    );
  }
}
