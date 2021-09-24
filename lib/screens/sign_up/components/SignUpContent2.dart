import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/CustomTextField.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SignUpContent2 extends StatefulWidget {
  static bool isButtonEnabled = false;
  static bool cond1 = false;
  static bool cond2 = false;

  static changeState1(bool changed1) {
    cond1 = changed1;
  }

  static changeState2(bool changed2) {
    cond2 = changed2;
  }

  static changeState(bool changed1, bool changed2) {
    cond1 = changed1;
    cond2 = changed2;
  }

  static bool returnState1() {
    return ((cond1 == null) || (cond1 == false)) ? false : true;
  }

  static bool returnState2() {
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
        SignUpContent2.cond1 = true;
        SignUpContent2.cond2 = true;
      } else if (cond1 && !cond2) {
        SignUpContent2.cond1 = true;
        SignUpContent2.cond2 = false;
      } else if (!cond1 && cond2) {
        SignUpContent2.cond1 = false;
        SignUpContent2.cond2 = true;
      } else {
        SignUpContent2.cond1 = false;
        SignUpContent2.cond2 = false;
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
          color: (SignUpContent2.cond1) ? kMainColor : kGrayColor,
        ),
        SizedBox(
          height: getHeight(10.0),
        ),
        ValidationWidget(
          text: '8자리 이상',
          color: (SignUpContent2.cond2) ? kMainColor : kGrayColor,
        ),
      ],
    );
  }
}

class ValidationWidget extends StatefulWidget {
  ValidationWidget({
    required this.text,
    required this.color,
  });
  final String text;
  dynamic color;

  @override
  _ValidationWidgetState createState() => _ValidationWidgetState();
}

class _ValidationWidgetState extends State<ValidationWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getWidth(6.0),
        ),
        Icon(
          Icons.check_circle_outline,
          size: getWidth(18.0),
          color: widget.color,
        ),
        SizedBox(
          width: getWidth(5.0),
        ),
        Text(
          widget.text,
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color: widget.color,
              ),
        ),
      ],
    );
  }
}
