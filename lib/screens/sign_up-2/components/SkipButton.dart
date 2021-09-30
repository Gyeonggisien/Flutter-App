import 'package:flutter/material.dart';
import '../../../constants.dart';

class SkipButton extends StatelessWidget {
  SkipButton({required this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kDefaultPadding * 3,
      child: TextButton(
        child: Text(
          '건너뛰기',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: kMainColor),
          textAlign: TextAlign.left,
        ),
        onPressed: () {
          onPressed();
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 0),
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
    );
  }
}
