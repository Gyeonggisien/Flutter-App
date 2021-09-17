import 'package:antilla/constants.dart';
import 'package:antilla/screens/Join6/components/TimerWidget.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'AuthCodeInput.dart';

class AuthCodeTimer extends StatefulWidget {
  const AuthCodeTimer({Key? key}) : super(key: key);

  @override
  _AuthCodeTimerState createState() => _AuthCodeTimerState();
}

class _AuthCodeTimerState extends State<AuthCodeTimer> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border(
          top: BorderSide(color: kMainColor, width: 2),
          bottom: BorderSide(color: kMainColor, width: 2),
          left: BorderSide(color: kMainColor, width: 2),
          right: BorderSide(color: kMainColor, width: 2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AuthCodeInput(),
          TimerWidget(),
        ],
      ),
    );
  }
}
