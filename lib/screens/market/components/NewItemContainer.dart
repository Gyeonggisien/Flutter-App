import 'package:antilla/constants.dart';
import 'package:antilla/screens/market/components/ComingSoonItem.dart';
import 'package:antilla/screens/market/components/NewItem.dart';
import 'package:antilla/screens/theme_details/components/RecommendTheme.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';


class NewItemContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Text(
            '따끈따끈 N차 신상',
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
              SizedBox(width: getWidth(kDefaultPadding),),
              NewItem(dateText: '10.02 전환 예정', title: '백드롭페인팅 추상화(아이보리)',),
              NewItem(dateText: '10.04 전환 예정', title: '(공식수입) 사티아 인센스스틱 홀더 15g/100g ',),
              NewItem(dateText: '10.05 전환 예정', title: '백드롭페인팅 추상화(아이보리)',),
              SizedBox(width: getWidth(kDefaultPadding),),
            ],
          ),
        ),
        SizedBox(height: getHeight(kDefaultPadding),),
      ],
    );
  }
}
