import 'package:flutter/material.dart';

import '../../../constants.dart';

class TimerWidgetSample extends StatefulWidget {
  String? timerText;
  bool isOver = false;
  bool isRetried = false;

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<TimerWidgetSample>
    with TickerProviderStateMixin {
  AnimationController? controller;
  Animation<int>? animation;
  Duration? clockTimer;
  int levelClock = 180;
  bool isRetried = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: levelClock),
    );

    controller!.forward();
    controller!.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void restart() {
    widget.isRetried = true;
    setState(() {
      controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: levelClock),
      );
      animation = StepTween(
        begin: levelClock,
        end: 0,
      ).animate(controller!);

      controller!.forward();

      clockTimer = Duration(seconds: animation!.value);

      controller!.forward();
    });
  }

  Widget customTimer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.4),
      child: Text(
        '$widget.timerText',
        style: TextStyle(
          fontSize: 15,
          color: kMainColor,
        ),
      ),
    );
  }

  /*
  Widget endTimer() {
    return GestureDetector(
      onTap: () {},
      child: Text(
        '0:00',
        style: TextStyle(color: kMainColor),
      ),
    );
  }
   */

  /*
  @override
  Widget build(BuildContext context) {
    return (isOver) ? endTimer() : customTimer();
  }
   */

  @override
  Widget build(BuildContext context) {
    animation = StepTween(
      begin: levelClock,
      end: 0,
    ).animate(controller!);
    Duration clockTimer = Duration(seconds: animation!.value);
    widget.timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.4),
      child: Text(
        '$widget.timerText',
        style: TextStyle(
          fontSize: 15,
          color: kMainColor,
        ),
      ),
    );
  }
}
