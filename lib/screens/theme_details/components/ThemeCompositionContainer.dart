import 'package:antilla/constants.dart';
import 'package:antilla/screens/search/components/NewIssue.dart';
import 'package:antilla/screens/theme_details/components/ThemeComposition.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class ThemeCompositionContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getHeight(kDefaultPadding * 0.5),
        horizontal: getWidth(kDefaultPadding),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '테마 구성',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: getWidth(kDefaultPadding * 0.5),
              ),
              Text(
                '4개',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kGrayColor),
              )
            ],
          ),
          SizedBox(
            height: getHeight(kDefaultPadding),
          ),
          ThemeComposition(
              name: '페퍼무드',
              title: '철제 강화유리 노트북 선반',
              image: 'images/composition1.png'),
          ThemeComposition(
              name: '페퍼무드',
              title: '화이트 북/펜슬 서랍',
              image: 'images/composition2.png'),
          ThemeComposition(
              name: '페퍼무드',
              title: '빈티지 탁상 시계',
              image: 'images/composition3.png'),
          ThemeComposition(
              name: '페퍼무드',
              title: '멤피스 스탠딩 모빌 오브제',
              image: 'images/composition4.png'),
        ],
      ),
    );
  }
}
