import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class MainClause extends StatelessWidget {
  MainClause({required this.text, this.icon});

  final String text;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check_circle,
          color: kMainColor,
          size: getWidth(36.0),
        ),
        SizedBox(
          width: getWidth(5.0),
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        if (icon != null) icon! else Container(),
      ],
    );
  }
}

class SubClause extends StatelessWidget {
  SubClause({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getWidth(5.0),
        ),
        Icon(
          Icons.check,
          color: kMainColor,
          size: getWidth(26.0),
        ),
        SizedBox(
          width: getWidth(10.0),
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(fontWeight: FontWeight.bold, color: kGrayColor),
        ),
        Spacer(),
        Icon(Icons.keyboard_arrow_right)
      ],
    );
  }
}
