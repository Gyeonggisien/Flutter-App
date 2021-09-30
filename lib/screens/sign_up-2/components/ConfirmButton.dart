import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  ConfirmButton({required this.onPressed, this.style});
  final Function onPressed;
  final dynamic style;

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
            .copyWith(color: kWhiteColor, fontWeight: FontWeight.bold),
      ),
      style: style,
    );
  }
}
