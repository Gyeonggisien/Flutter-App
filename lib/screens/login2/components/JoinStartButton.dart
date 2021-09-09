import 'package:flutter/material.dart';
import 'package:antilla/constants.dart';

class JoinStartButton extends StatelessWidget {
  const JoinStartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: JoinButton(),
        ),
        Expanded(
          child: StartButton(),
        ),
      ],
    );
  }
}

class JoinButton extends StatelessWidget {
  const JoinButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        '신규 가입하기',
        style: TextStyle(
          color: kSubColor,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      ),
      style: TextButton.styleFrom(
        primary: kWhiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: kMainColor,
          ),
        ),
      ),
      onPressed: null,
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        '시작하기',
        style: TextStyle(
          color: kWhiteColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: kMainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: kMainColor,
            width: 2,
          ),
        ),
      ),
      onPressed: null,
    );
  }
}
