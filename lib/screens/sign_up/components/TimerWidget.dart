import 'package:flutter/material.dart';
import '../../../constants.dart';

class TimerWidget extends StatefulWidget {
  TimerWidget({Key? key}) : super(key: key);

  bool? isRetried = false;
  bool? hasBeenOver = false;
  int trial = 0;
  AnimationController? controller;
  String time = Countdown(
    animation: null,
  );

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<TimerWidget> with TickerProviderStateMixin {
  int levelClock = 180;

  @override
  void initState() {
    setState(() {
      widget.trial = 1;
      super.initState();

      widget.controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: levelClock),
      );

      widget.controller!.forward();
      if (widget.hasBeenOver == true) {
        widget.isRetried = true;
      }
    });
  }

  void restart() {
    setState(() {
      if (widget.trial >= 1) widget.hasBeenOver = true;
      widget.trial++;

      widget.controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: levelClock),
      );

      widget.controller!.forward();
      if (widget.hasBeenOver == true) {
        widget.isRetried = true;
      }
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
      widget.hasBeenOver = true;
    });
  }
}

class Countdown extends AnimatedWidget {
  Countdown({Key? key, required this.animation})
      : super(key: key, listenable: animation);
  Animation<int> animation;
  String? currentTime;

  @override
  Widget build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);
    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

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
