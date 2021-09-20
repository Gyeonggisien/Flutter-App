import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/CustomTextField.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SignUpContent2 extends StatefulWidget {
  static bool isButtonEnabled = (cond1 && cond2);
  static bool cond1 = false;
  static bool cond2 = false;

  @override
  _SignUpContent2State createState() => _SignUpContent2State();
}

class _SignUpContent2State extends State<SignUpContent2> {
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
        ),
        SizedBox(
          height: getHeight(10.0),
        ),
        ValidationWidget(
            text: '영문, 숫자 조합',
            onPressed: () {
              setState(() {});
            }),
        SizedBox(
          height: getHeight(10.0),
        ),
        ValidationWidget(text: '8자리 이상', onPressed: () {}),
      ],
    );
  }
}

class ValidationWidget extends StatefulWidget {
  ValidationWidget({
    required this.text,
    required this.onPressed,
  });
  final String text;
  final Function()? onPressed;

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
        Icon(Icons.check_circle_outline,
            size: getWidth(18.0),
            color: SignUpContent2.cond1 ? kMainColor : kGrayColor),
        SizedBox(
          width: getWidth(5.0),
        ),
        Text(
          widget.text,
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color:
                    SignUpContent2.isButtonEnabled ? kMainColor : kGray2Color,
              ),
        ),
      ],
    );
  }
}
