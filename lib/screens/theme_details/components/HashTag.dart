import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class HashTag extends StatelessWidget {
  HashTag({required this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      margin: EdgeInsets.only(left: (getWidth(kDefaultPadding * 0.2))),
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(kDefaultPadding * 0.5),
          vertical: getWidth(kDefaultPadding * 0.02)),
      decoration: BoxDecoration(
          color: Color(0xFFFBFBFB),
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Color(0xFFE3E3E3), width: 2.0)),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: kGrayColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}