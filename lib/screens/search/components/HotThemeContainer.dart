import 'package:antilla/constants.dart';
import 'package:antilla/screens/search/components/HotTheme.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';


class HotThemeContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Text(
            '🔥HOT 테마 순위',
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
            children: [
              SizedBox(width: getWidth(kDefaultPadding),),
              HotTheme(
                image: 'images/item2.png',
                icon: 'images/icons/1.png',
                text: '블루 미드센츄리',
              ),
              HotTheme(
                image: 'images/item1.png',
                icon: 'images/icons/2.png',
                text: '그리너리 빈티지',
              ),
              HotTheme(
                image: 'images/item3.png',
                icon: 'images/icons/3.png',
                text: '빈티지',
              ),
              SizedBox(width: getWidth(kDefaultPadding),),
            ],
          ),
        ),
        SizedBox(height: getHeight(kDefaultPadding),),
      ],
    );
  }
}
