import 'package:antilla/constants.dart';
import 'package:antilla/screens/market/components/ComingSoonItem.dart';
import 'package:antilla/screens/market/components/HotDealItem.dart';
import 'package:antilla/screens/theme_details/components/RecommendTheme.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class HotDealContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Text(
            '🔥HOT 딜',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: getWidth(kDefaultPadding),
              ),
              HotDealItem(
                  dateText: '⏰ 03:51:09',
                  title: '백드롭페인팅 추상화(아이보리)',
                  name: '큐키트',
                  percent: '70%',
                  price: '10,200'),
              HotDealItem(
                  dateText: '⏰ 03:51:09',
                  title: '(공식수입) 사티아 인센스스틱 홀더 15g/100g ',
                  name: '나그참파',
                  percent: '30%',
                  price: '3,300'),
              HotDealItem(
                  dateText: '⏰ 03:51:09',
                  title: '백드롭페인팅 추상화(아이보리)',
                  name: '큐키트',
                  percent: '70%',
                  price: '10,200'),
              SizedBox(
                width: getWidth(kDefaultPadding),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getHeight(kDefaultPadding),
        ),
      ],
    );
  }
}
