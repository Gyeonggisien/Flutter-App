import 'package:flutter/material.dart';

import '../../../constants.dart';

class SignUpContent5 extends StatefulWidget {
  const SignUpContent5({Key? key}) : super(key: key);

  static bool isButtonEnabled = true;

  @override
  _SignUpContent5State createState() => _SignUpContent5State();
}

class _SignUpContent5State extends State<SignUpContent5> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: '',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: kFontColor,
                ),
            children: <TextSpan>[
              TextSpan(
                  text: '마음에 드는 테마',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '를\n'),
              TextSpan(
                text: '3가지 ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: '이상 골라주세요\n'),
              TextSpan(
                text: '많이 선택할수록 취향에 맞는 테마를 추천받을 수 있어요',
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kGray2Color),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
