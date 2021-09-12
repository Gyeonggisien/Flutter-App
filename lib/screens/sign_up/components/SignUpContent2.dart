import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/CustomTextField.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SignUpContent2 extends StatelessWidget {
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
        SizedBox(height: getHeight(10.0),),
        ValidationWidget(text: '영문, 숫자 조합'),
        SizedBox(height: getHeight(10.0),),
        ValidationWidget(text: '8자리 이상'),
      ],
    );
  }
}

class ValidationWidget extends StatelessWidget {
  ValidationWidget({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: getWidth(6.0),),
        Icon(
          Icons.check_circle_outline,
          size: getWidth(18.0),
          color: kGrayColor,
        ),
        SizedBox(width: getWidth(5.0),),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: kGray2Color),
        ),
      ],
    );
  }
}