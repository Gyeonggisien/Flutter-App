import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class FindIdPasswordButton extends StatelessWidget {
  const FindIdPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Spacer(flex: 3),
      Expanded(
        flex: 5,
        child: FindIdButton(),
      ),
      Expanded(
        child: Center(
          child: Text(
            '|',
            style: TextStyle(
              color: kGrayColor,
            ),
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: FindPasswordButton(),
      ),
      Spacer(flex: 3),
    ]);
  }
}

class FindIdButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(color: kGrayColor, fontSize: 17),
      ),
      child: Text('아이디 찾기', textAlign: TextAlign.right),
      onPressed: null,
    );
  }
}

class FindPasswordButton extends StatelessWidget {
  const FindPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(color: kGrayColor, fontSize: 17),
      ),
      child: Text(
        '패스워드 찾기',
        textAlign: TextAlign.left,
      ),
      onPressed: null,
    );
  }
}
