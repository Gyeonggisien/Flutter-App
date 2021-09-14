import 'package:antilla/screens/Join6/components/TimerWidget.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AuthCodeInput extends StatefulWidget {
  const AuthCodeInput({Key? key}) : super(key: key);

  @override
  _AuthCodeInputState createState() => _AuthCodeInputState();
}

class _AuthCodeInputState extends State<AuthCodeInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
            errorStyle: TextStyle(color: kMainColor, fontSize: 15),
            labelStyle: TextStyle(color: kGray2Color, fontSize: 15),
            labelText: '인증번호'),
      ),
    );
  }
}
