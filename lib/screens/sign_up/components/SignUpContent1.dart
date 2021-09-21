import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/CustomTextField.dart';
import 'package:antilla/size_config.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignUpContent1 extends StatefulWidget {
  static bool isButtonEnabled = false;

  @override
  _SignUpContent1State createState() => _SignUpContent1State();
}

class _SignUpContent1State extends State<SignUpContent1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: '가입을 위해\n',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: kFontColor,
                ),
            children: <TextSpan>[
              TextSpan(
                  text: '이메일', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '을 입력해주세요'),
            ],
          ),
        ),
        SizedBox(
          height: getHeight(32.0),
        ),
        CustomTextField(
            autofocus: true,
            hintText: '이메일',
            width: MediaQuery.of(context).size.width,
            validator: (String? value) {
              if (EmailValidator.validate(value!) == true) {
                SignUpContent1.isButtonEnabled = true;
                return "사용할 수 있는 이메일입니다.";
              } else {
                SignUpContent1.isButtonEnabled = false;
                return null;
              }
            }),
      ],
    );
  }
}

/*
String? Function(String?)? isEmailValid(String value) {
  return (value) => EmailValidator.validate(value!) ? "사용할 수 있는 이메일입니다." : null;
}
*/
