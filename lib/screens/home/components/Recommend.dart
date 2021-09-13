import 'package:antilla/constants.dart';
import 'package:antilla/screens/home/components/RecommendItem.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  const Recommend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: getWidth(kDefaultPadding),
              bottom: getHeight(kDefaultPadding * 0.5),
              top: getHeight(kDefaultPadding * 0.5)),
          child: Text(
            '이번에는 이거 어때요?',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: getHeight(15.0)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: getWidth(kDefaultPadding),),
              RecommendItem(
                title: '그리너리 빈티지',
                image: 'images/item1.png',
                plan: 'BASIC',
              ),
              RecommendItem(
                title: '블루 미드센츄리',
                image: 'images/item2.png',
                plan: 'STANDARD',
              ),
              RecommendItem(
                title: '인터슽텔라 꿀잼',
                image: 'images/item1.png',
                plan: 'PREMIUM',
              ),
              SizedBox(width: getWidth(kDefaultPadding),),
            ],
          ),
        ),
      ],
    );
  }
}
