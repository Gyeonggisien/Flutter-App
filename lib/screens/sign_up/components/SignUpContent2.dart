import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/CustomTextField.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SignUpContent2 extends StatelessWidget {
  static bool isButtonEnabled = (cond1 && cond2);
  static bool cond1 = false;
  static bool cond2 = false;
  static dynamic kMain = kMainColor;
  static dynamic kGray = kGrayColor;
  static dynamic kGray2 = kGray2Color;

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
        CustomPasswordTextField(hintText: '패스워드'),
        SizedBox(
          height: getHeight(10.0),
        ),
        ValidationWidget(
          text: '영문, 숫자 조합',
          color: SignUpContent2.cond1 ? kMain : kGray,
        ),
        SizedBox(
          height: getHeight(10.0),
        ),
        ValidationWidget(
          text: '8자리 이상',
          color: SignUpContent2.cond2 ? kMain : kGray,
        ),
      ],
    );
  }
}

class ValidationWidget extends StatefulWidget {
  ValidationWidget({required this.text, required this.color});
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
                color: SignUpContent2.isButtonEnabled
                    ? SignUpContent2.kMain
                    : SignUpContent2.kGray2,
              ),
        ),
      ],
    );
  }
}
