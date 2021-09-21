import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';


class MarketTabBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: kGray2Color.withOpacity(0.3),
                offset: Offset(0.0, 3.0),
                blurRadius: 10.0,
                spreadRadius: 1.0)
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              width: getWidth(kDefaultPadding * 0.8),
            ),
            Material(
              color: Colors.white,
              child: TabBar(
                isScrollable: true,
                indicatorColor: kMainColor,
                labelPadding: EdgeInsets.only(
                  left: getWidth(kDefaultPadding * 0.2),
                  right: getWidth(kDefaultPadding * 0.2),
                  top: getWidth(kDefaultPadding * 0.5),
                ),
                labelStyle: Theme.of(context).textTheme.headline3,
                tabs: [
                  Tab(text: ' 전체 '),
                  Tab(text: ' NEW '),
                  Tab(text: ' HOT딜 '),
                  Tab(text: ' 장식/소품 '),
                  Tab(text: ' 가구 '),
                  Tab(text: ' 패브릭 '),
                  Tab(text: ' 조명/스탠드 '),
                ],
                labelColor: kMainColor,
                unselectedLabelColor: kFontColor,
                indicator: MaterialIndicator(
                  height: 2,
                  tabPosition: TabPosition.bottom,
                  color: kMainColor,
                ),
                onTap: (int index) {},
              ),
            ),
            SizedBox(
              width: getWidth(kDefaultPadding * 0.8),
            ),
          ],
        ),
      ),
    );
  }
}
