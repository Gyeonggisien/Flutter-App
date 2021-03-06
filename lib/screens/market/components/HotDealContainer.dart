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
            '๐ฅHOT ๋',
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
                  dateText: 'โฐ 03:51:09',
                  title: '๋ฐฑ๋๋กญํ์ธํ ์ถ์ํ(์์ด๋ณด๋ฆฌ)',
                  name: 'ํํคํธ',
                  percent: '70%',
                  price: '10,200'),
              HotDealItem(
                  dateText: 'โฐ 03:51:09',
                  title: '(๊ณต์์์) ์ฌํฐ์ ์ธ์ผ์ค์คํฑ ํ๋ 15g/100g ',
                  name: '๋๊ทธ์ฐธํ',
                  percent: '30%',
                  price: '3,300'),
              HotDealItem(
                  dateText: 'โฐ 03:51:09',
                  title: '๋ฐฑ๋๋กญํ์ธํ ์ถ์ํ(์์ด๋ณด๋ฆฌ)',
                  name: 'ํํคํธ',
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
