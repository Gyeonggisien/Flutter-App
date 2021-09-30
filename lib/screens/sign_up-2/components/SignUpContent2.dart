import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

import 'CustomTextField.dart';
import 'ValidationWidget.dart';

class SignUpContent2 extends StatefulWidget {
  bool isButtonEnabled = false;
  bool cond1 = false;
  bool cond2 = false;

  changeState1(bool changed1) {
    cond1 = changed1;
  }

  changeState2(bool changed2) {
    cond2 = changed2;
  }

  changeState(bool changed1, bool changed2) {
    cond1 = changed1;
    cond2 = changed2;
  }

  bool returnState1() {
    return ((cond1 == null) || (cond1 == false)) ? false : true;
  }

  bool returnState2() {
    return ((cond2 == null) || (cond2 == false)) ? false : true;
  }

  @override
  _SignUpContent2State createState() => _SignUpContent2State();
}

class _SignUpContent2State extends State<SignUpContent2> {
  void callback(String? text) {
    RegExp regex = RegExp('[a-zA-Z0-9]');
    bool cond1 = regex.hasMatch(text!);
    bool cond2 = text.trim().length >= 8;
    setState(() {
      if (cond1 && cond2) {
        widget.cond1 = true;
        widget.cond2 = true;
      } else if (cond1 && !cond2) {
        widget.cond1 = true;
        widget.cond2 = false;
      } else if (!cond1 && cond2) {
        widget.cond1 = false;
        widget.cond2 = true;
      } else {
        widget.cond1 = false;
        widget.cond2 = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: '사용하실\n',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: kFontColor,
                ),
            children: <TextSpan>[
              TextSpan(
                  text: '패스워드', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '를 입력해주세요'),
            ],
          ),
        ),
        SizedBox(
          height: getHeight(32.0),
        ),
        CustomPasswordTextField(
          hintText: '패스워드',
          callback: callback,
        ),
        SizedBox(
          height: getHeight(10.0),
        ),
        ValidationWidget(
          text: '영문, 숫자 조합',
          color: (widget.cond1) ? kMainColor : kGrayColor,
        ),
        SizedBox(
          height: getHeight(10.0),
        ),
        ValidationWidget(
          text: '8자리 이상',
          color: (widget.cond2) ? kMainColor : kGrayColor,
        ),
      ],
    );
  }
}
