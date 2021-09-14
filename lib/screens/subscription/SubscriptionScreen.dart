import 'package:antilla/constants.dart';
import 'package:antilla/screens/subscription/components/SubscriptionAppBar.dart';
import 'package:antilla/size_config.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: SubscriptionAppBar(),
      ),
      body: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: getWidth(SizeConfig.screenWidth! * 0.3)),
              child: Material(
                color: Colors.white,
                child: TabBar(
                  indicatorColor: kMainColor,
                  labelPadding: EdgeInsets.all(0.0),
                  tabs: [
                    Tab(
                      child: Text(
                        '베이직',
                        style: Theme.of(context).textTheme.headline3!.copyWith(color: kGrayColor),
                      ),
                    ),
                    Tab(
                      child: Text(
                        '스탠다드',
                        style: Theme.of(context).textTheme.headline3!.copyWith(color: kGrayColor),
                      ),
                    ),
                    Tab(
                      child: Text(
                        '프리미엄',
                        style: Theme.of(context).textTheme.headline3!.copyWith(color: kGrayColor),
                      ),
                    ),
                    Tab(
                      child: Text(
                        '안틸라 키트',
                        style: Theme.of(context).textTheme.headline3!.copyWith(color: kGrayColor),
                      ),
                    ),
                  ],
                  labelColor: kFontColor,
                  indicator: MaterialIndicator(
                    height: 2,
                    tabPosition: TabPosition.bottom,
                    color: kMainColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
