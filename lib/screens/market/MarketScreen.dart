import 'package:antilla/constants.dart';
import 'package:antilla/screens/market/components/ComingSoonContainer.dart';
import 'package:antilla/screens/market/components/HotDealContainer.dart';
import 'package:antilla/screens/market/components/MarketAppBar.dart';
import 'package:antilla/screens/market/components/MarketFilterButton.dart';
import 'package:antilla/screens/market/components/MarketFilterContainer.dart';
import 'package:antilla/screens/market/components/MarketTabBar.dart';
import 'package:antilla/screens/market/components/NewItemContainer.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return DefaultTabController(
      length: 7,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: MarketAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              MarketTabBar(),
              MarketFilterContainer(),
              Container(
                width: SizeConfig.screenWidth,
                padding: EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding), vertical: getWidth(kDefaultPadding)),
                child: Image.asset('images/market-banner.png'),
              ),
              ComingSoonContainer(),
              HotDealContainer(),
              Container(
                width: SizeConfig.screenWidth,
                child: Image.asset('images/money.png'),
              ),
              NewItemContainer()
            ],
          ),
        ),
      ),
    );
  }
}
