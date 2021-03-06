import 'package:antilla/screens/Join6/components/TimerWidget.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class TimerWidget extends StatefulWidget {
  TimerWidget({Key? key}) : super(key: key);

  bool isRetried = false;
  AnimationController? controller;

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<TimerWidget> with TickerProviderStateMixin {
  int levelClock = 180;

  @override
  void initState() {
    setState(() {
      super.initState();

      widget.controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: levelClock),
      );

      widget.controller!.forward();
    });
  }

  void restart() {
    setState(() {
      widget.isRetried = true;

      widget.controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: levelClock),
      );

      widget.controller!.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    restart();
    return Countdown(
      animation: StepTween(
        begin: levelClock,
        end: 0,
      ).animate(widget.controller!),
    );
  }

  @override
  void dispose() {
    setState(() {
      super.dispose();
      widget.isRetried = true;
    });
  }
}

class Countdown extends AnimatedWidget {
  Countdown({Key? key, required this.animation})
      : super(key: key, listenable: animation);
  Animation<int> animation;
  static bool isOver = false;

  Widget customTimer() {
    Duration clockTimer = Duration(seconds: animation.value);
    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';
    if (timerText == '0:00') {
      isOver = true;
    }
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

  Widget endTimer() {
    return GestureDetector(
      onTap: () {},
      child: Text(
        '0:00',
        style: TextStyle(color: kMainColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (isOver) ? endTimer() : customTimer();
  }
}
