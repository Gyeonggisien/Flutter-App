import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/CustomTextField.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent2.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SignUpContent1 extends StatelessWidget {
  final _controller = TextEditingController();

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
          hintText: '이메일',
          width: MediaQuery.of(context).size.width,
        ),
      ],
    );
  }
}
