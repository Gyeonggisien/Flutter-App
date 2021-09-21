import 'package:antilla/constants.dart';
import 'package:antilla/screens/market/components/MarketFilterButton.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class MarketFilterContainer extends StatelessWidget {
  const MarketFilterContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(kDefaultPadding),
          vertical: getWidth(kDefaultPadding * 0.5)),
      child: Row(
        children: [
          Icon(
            Icons.filter_alt_sharp,
            color: kGray2Color,
          ),
          SizedBox(width: getWidth(5.0),),
          MarketFilterButton(text: '정렬'),
          SizedBox(width: getWidth(4.0),),
          MarketFilterButton(text: '분위기'),
          SizedBox(width: getWidth(4.0),),
          MarketFilterButton(text: '색상'),
          SizedBox(width: getWidth(4.0),),
          MarketFilterButton(text: '공간'),
        ],
      ),
    );
  }
}
