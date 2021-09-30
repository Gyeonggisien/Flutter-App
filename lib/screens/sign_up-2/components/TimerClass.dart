import 'package:flutter/material.dart';

import '../../../constants.dart';

class TimerClass extends StatefulWidget {
  static final TimerClass _timerClass = TimerClass._timerClass;

  factory TimerClass() {
    return _timerClass;
  }

  bool isWorking = false;
  bool isRetried = false;
  AnimationController? controller;

  @override
  _TimerClassState createState() => _TimerClassState();
}

class _TimerClassState extends State<TimerClass> with TickerProviderStateMixin {
  int levelClock = 180;

  @override
  void initState() {
    setState(() {
      super.initState();

      widget.controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: levelClock),
      );
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
  void dispose() {
    setState(() {
      super.dispose();
      widget.isRetried = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedBuilder(
          animation: AnimationController(
            vsync: this,
            duration: Duration(seconds: 180),
          ),
          builder: (BuildContext context, Widget? child) {
            AnimationController controller = AnimationController(
              vsync: this,
              duration: Duration(seconds: levelClock),
            );
            Animation<int> animation = StepTween(
              begin: levelClock,
              end: 0,
            ).animate(controller);
            Widget customTimer() {
              Duration clockTimer = Duration(seconds: animation.value);
              String timerText =
                  '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';
              if (timerText == '0:00') {
                widget.isWorking = false;
              }
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 0.4),
                child: Text(
                  '$timerText',
                  style: TextStyle(
                    fontSize: 15,
                    color: kMainColor,
                  ),
                ),
              );
            }

            return customTimer();
          }),
    );
  }
}
