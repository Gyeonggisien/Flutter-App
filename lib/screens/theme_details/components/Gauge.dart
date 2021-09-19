import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';


class Gauge extends StatelessWidget {
  Gauge({required this.text, required this.percent, required this.gauge});

  final text;
  final percent;
  final gauge;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: kGrayColor),
            ),
            SizedBox(width: getWidth(5.0)),
            Container(
              width: getWidth(100.0),
              height: getWidth(6.0),
              decoration: BoxDecoration(
                color: kMainColor,
                gradient: LinearGradient(
                    colors: [kMainColor, kGray3Color], stops: [gauge, gauge]),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
        Text(
          percent,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: kGrayColor),
        ),
      ],
    );
  }
}
