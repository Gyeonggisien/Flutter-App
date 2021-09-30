import 'package:flutter/material.dart';
import '../../../constants.dart';

class CancelButton extends StatelessWidget {
  CancelButton({required this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kDefaultPadding * 1.5,
      child: TextButton(
        child: Text(
          '취소',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: kMainColor),
          textAlign: TextAlign.right,
        ),
        onPressed: () {
          onPressed();
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 0),
          ),
        ),
      ),
    );
  }
}
