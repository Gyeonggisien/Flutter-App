import 'package:flutter/material.dart';
import 'package:antilla/constants.dart';

class MainText extends StatelessWidget {
  const MainText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text.rich(
        TextSpan(
          text: '안틸라 이용을 위해\n',
          style: TextStyle(
            fontSize: 26,
            color: kFontColor,
          ),
          children: <TextSpan>[
            TextSpan(
              text: '본인확인',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: kFontColor,
              ),
            ),
            TextSpan(
              text: '을 해주세요',
              style: TextStyle(
                fontSize: 26,
                color: kFontColor,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
