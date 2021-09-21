import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SubscriptionTotal extends StatelessWidget {
  SubscriptionTotal(
      {required this.text, required this.color, required this.day});

  final text;
  final color;
  final day;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Row(
      children: [
        Container(
          width: getWidth(60.0),
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
        ),
        SizedBox(
          width: getWidth(kDefaultPadding * 0.5),
        ),
        Text(
          'D - $day',
          style: Theme.of(context).textTheme.headline2!.copyWith(
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}
