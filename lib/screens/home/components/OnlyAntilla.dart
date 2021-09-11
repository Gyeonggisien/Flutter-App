import 'package:antilla/constants.dart';
import 'package:antilla/screens/home/components/OnlyItem.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class OnlyAntilla extends StatelessWidget {
  const OnlyAntilla({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.only(
          left: getWidth(kDefaultPadding)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getHeight(kDefaultPadding * 0.5),
          ),
          Text.rich(
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
          SizedBox(
            height: getHeight(kDefaultPadding),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                OnlyItem(),
                OnlyItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}