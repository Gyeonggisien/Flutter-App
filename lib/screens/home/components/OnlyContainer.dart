import 'package:antilla/constants.dart';
import 'package:antilla/screens/home/components/OnlyItem.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class OnlyContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: getHeight(kDefaultPadding * 0.5),
        ),
        Padding(
          padding: EdgeInsets.all(getWidth(kDefaultPadding)),
          child: Text.rich(
            TextSpan(
              text: '안틸라 ',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                color: kFontColor,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'ONLY💡',
                  style: TextStyle(color: kMainColor),
                ),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: getWidth(kDefaultPadding),),
              OnlyItem(),
              OnlyItem(),
              SizedBox(width: getWidth(kDefaultPadding),),
            ],
          ),
        ),
      ],
    );
  }
}