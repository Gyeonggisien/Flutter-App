import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class RecentSearch extends StatelessWidget {
  RecentSearch({required this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(kDefaultPadding * 0.7),
              vertical: getHeight(kDefaultPadding * 0.5)),
          decoration: BoxDecoration(
              color: Color(0xFFFBFBFB),
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Color(0xFFE3E3E3))),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(text,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: kGrayColor)),
              SizedBox(
                width: getWidth(kDefaultPadding * 0.5),
              ),
              Text('X')
            ],
          ),
        ),
        SizedBox(width: getWidth(kDefaultPadding * 0.5),)
      ],
    );
  }
}
