import 'package:flutter/material.dart';
import '../../../constants.dart';

class StartButton extends StatelessWidget {
  StartButton({required this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 250,
      child: TextButton(
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
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: kMainColor,
              width: 1,
            ),
          ),
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
