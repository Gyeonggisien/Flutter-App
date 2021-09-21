import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class MarketFilterButton extends StatelessWidget {
  MarketFilterButton({required this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getWidth(2.0), horizontal: getWidth(13.0)),
      decoration: BoxDecoration(
          color: kGray3Color, borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: kGrayColor),
          ),
          Icon(
            Icons.keyboard_arrow_down_sharp,
            color: kGrayColor,
          )
        ],
      ),
    );
  }
}
