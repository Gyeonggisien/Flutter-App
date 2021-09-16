import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  ConfirmButton({required this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Text(
        '확인',
        style: Theme.of(context)
            .textTheme
            .headline2!
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        primary: kMainColor,
        padding: EdgeInsets.only(
            top: kDefaultPadding * 1.3, bottom: kDefaultPadding * 1.9),
      ),
    );
  }
}
