import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class FindPasswordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('패스워드 찾기'),
      style: TextButton.styleFrom(
          textStyle: const TextStyle(color: kGrayColor, fontSize: 20)),
      onPressed: null,
    );
  }
}
