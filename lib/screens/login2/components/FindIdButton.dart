import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class FindIdButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(color: kGrayColor, fontSize: 20),
      ),
      child: Text('아이디 찾기'),
      onPressed: null,
    );
  }
}
