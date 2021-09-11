import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SubscriptionTotal extends StatelessWidget {
  SubscriptionTotal(
      {required this.text, required this.borderColor, required this.day});

  final text;
  final borderColor;
  final day;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Row(
      children: [
        Container(
          width: getWidth(60.0),
          height: getHeight(30.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: borderColor, width: 2.0)),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: kFontColor),
            ),
          ),
        ),
        SizedBox(
          width: getWidth(kDefaultPadding * 0.5),
        ),
        Text(
          'D - $day',
          style: Theme.of(context).textTheme.headline3!.copyWith(),
        )
      ],
    );
  }
}
