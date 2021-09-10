import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class FindIdPasswordButton extends StatelessWidget {
  const FindIdPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      FindIdButton(),
      SizedBox(
        child: Text('|'),
      ),
      FindPasswordButton(),
    ]);
  }
}

class FindIdButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(color: kGrayColor, fontSize: 15),
        ),
        child: Text('아이디 찾기', textAlign: TextAlign.right),
        onPressed: null,
      ),
    );
  }
}

class FindPasswordButton extends StatelessWidget {
  const FindPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(color: kGrayColor, fontSize: 15),
        ),
        child: Text(
          '패스워드 찾기',
          textAlign: TextAlign.left,
        ),
        onPressed: null,
      ),
    );
  }
}
