import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class ResendAuthCodeButton extends StatefulWidget {
  const ResendAuthCodeButton({Key? key}) : super(key: key);

  @override
  _ResendAuthCodeState createState() => _ResendAuthCodeState();
}

class _ResendAuthCodeState extends State<ResendAuthCodeButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 130,
      child: TextButton(
        child: Text(
          '인증번호 재전송',
          style: TextStyle(fontSize: 15, color: kWhiteColor),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(kMainColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: null,
      ),
    );
  }
}
