import 'package:antilla/constants.dart';
import 'package:antilla/screens/search/components/RecentSearch.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class RecentContainer extends StatelessWidget {
  const RecentContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding)),
          child: Row(
            children: [
              Text(
                '최근 검색어',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                '전체 삭제',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kMainColor),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getHeight(kDefaultPadding),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              SizedBox(width: getWidth(kDefaultPadding)),
              RecentSearch(text: '모던'),
              RecentSearch(text: '미드센츄리'),
              RecentSearch(text: '무비포스터'),
              RecentSearch(text: '심플한 테마'),
              SizedBox(width: getWidth(kDefaultPadding * 0.5)),
            ],
          ),
        ),
      ],
    );
  }
}
