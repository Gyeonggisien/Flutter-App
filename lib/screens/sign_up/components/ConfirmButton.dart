import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class ConfirmButton extends StatefulWidget {
  ConfirmButton({required this.onPressed, this.style});
  final Function onPressed;
  dynamic style;

  @override
  _ConfirmButtonState createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
  @override
  Widget build(BuildContext context) {
    bool isValid = false;

    return ElevatedButton(
      onPressed: () {
        widget.onPressed();
      },
      child: Text(
        '확인',
        style: Theme.of(context)
            .textTheme
            .headline2!
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      style: widget.style,
    );
  }
}
