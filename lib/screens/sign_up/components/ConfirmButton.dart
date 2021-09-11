import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  ConfirmButton({this.topPadding, this.bottomPadding});

  final topPadding;
  final bottomPadding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
          top: topPadding == null
              ? kDefaultPadding * 1.3
              : kDefaultPadding * topPadding,
          bottom: bottomPadding == null
              ? kDefaultPadding * 1.9
              : kDefaultPadding * bottomPadding,
        ),
      ),
    );
  }
}
