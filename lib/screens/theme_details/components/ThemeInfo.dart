import 'package:antilla/constants.dart';
import 'package:antilla/screens/theme_details/components/HashTag.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class ThemeInfo extends StatelessWidget {
  const ThemeInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.all(getWidth(kDefaultPadding)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '베이직 플랜',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kGrayColor),
              ),
              HashTag(text: '무료배송'),
              HashTag(text: 'AR'),
            ],
          ),
          SizedBox(
            height: getWidth(3.0),
          ),
          Text(
            '화이트 플레이리스트',
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: getWidth(3.0),
          ),
          Row(
            children: [
              Text(
                '98% 일치',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kButtonColor),
              ),
              SizedBox(
                width: getWidth(5.0),
              ),
              Container(
                width: getWidth(15.0),
                child: Image.asset('images/icons/star.png'),
              ),
              Text(
                '4.9',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: getWidth(kDefaultPadding * 0.4),
              ),
              Text('구독 1,380',
                  style: Theme.of(context).textTheme.headline4),
            ],
          ),
        ],
      ),
    );
  }
}