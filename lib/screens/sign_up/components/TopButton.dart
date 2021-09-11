import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '이전',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: kMainColor),
        ),
        Spacer(),
        Text(
          '취소',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: kMainColor),
        ),
      ],
    );
  }
}
