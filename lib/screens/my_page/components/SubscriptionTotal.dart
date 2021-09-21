import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SubscriptionTotal extends StatelessWidget {
  SubscriptionTotal({required this.color, required this.text});
  final color;
  final text;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      width: getWidth(50.0),
      height: getHeight(24.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: color, width: 2.0)),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: kWhiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
