import 'package:antilla/constants.dart';
import 'package:antilla/screens/components/AntillaAppBar.dart';
import 'package:antilla/screens/home/components/OnlyContainer.dart';
import 'package:antilla/screens/home/components/ProfileCard.dart';
import 'package:antilla/screens/home/components/Recommend.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AntillaAppBar(title: "antilla",),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileCard(),
            Recommend(),
            OnlyContainer(),
            Container(
              width: SizeConfig.screenWidth,
              padding: EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding), vertical: getHeight(kDefaultPadding)),
              child: Image.asset('images/subscription-information.png'),
            ),
            Recommend(),
            Recommend(),
            Recommend(),
            Container(
              width: SizeConfig.screenWidth,
              padding: EdgeInsets.only(top: getHeight(kDefaultPadding)),
              child: Image.asset('images/money.png'),
            ),
          ],
        ),
      ),
    );
  }
}