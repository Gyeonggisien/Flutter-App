import 'package:antilla/constants.dart';
import 'package:antilla/screens/components/AntillaAppBar.dart';
import 'package:antilla/screens/subscription/components/BestContainer.dart';
import 'package:antilla/screens/subscription/components/ThemeItem.dart';
import 'package:antilla/size_config.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class SubscriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AntillaAppBar(title: "테마 구독",),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
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
                      width: getWidth(kDefaultPadding),
                    ),
                    Material(
                      color: Colors.white,
                      child: TabBar(
                        isScrollable: true,
                        indicatorColor: kMainColor,
                        labelPadding: EdgeInsets.only(
                          right: getWidth(kDefaultPadding * 0.1),
                          top: getWidth(kDefaultPadding * 0.5),
                        ),
                        labelStyle: Theme.of(context).textTheme.headline3,
                        tabs: [
                          Tab(text: ' 베이직 '),
                          Tab(text: ' 스탠다드 '),
                          Tab(text: ' 프리미엄 '),
                          Tab(text: ' 안틸라 키트 '),
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
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                      'images/subscription-basic.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenWidth! * 0.5,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [kWhiteColor.withOpacity(0.0), kWhiteColor],
                            stops: [0.1, 0.85]),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Column(
                      children: [
                        BorderedText(
                          strokeWidth: 7.0,
                          strokeColor: kMainColor,
                          child: Text(
                            '화이트 플레이리스트',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: getWidth(kDefaultPadding * 0.5),
                        ),
                        Text('노트북 선반 / 미니 서랍장 / 빈티지 시계 / 오브제',
                            style: Theme.of(context).textTheme.headline5),
                        SizedBox(
                          height: getWidth(kDefaultPadding * 0.5),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: getWidth(20.0),
                              child: Image.asset('images/icons/bookmark.png'),
                            ),
                            SizedBox(
                              width: getWidth(kDefaultPadding),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style:
                                  ElevatedButton.styleFrom(primary: kMainColor),
                              child: Text(
                                '구독하러 가기',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(
                                        color: kWhiteColor,
                                        fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: getWidth(kDefaultPadding),
                            ),
                            Container(
                              width: getWidth(20.0),
                              child:
                                  Image.asset('images/icons/external-link.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              BestContainer(),
              Container(
                width: SizeConfig.screenWidth,
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(kDefaultPadding),
                    vertical: getHeight(kDefaultPadding)),
                child: Image.asset('images/subscription-information.png'),
              ),
              Container(
                width: SizeConfig.screenWidth,
                height: 7.0,
                color: Color(0xFFE0DDD8),
              ),
              Padding(
                padding: EdgeInsets.all(getWidth(kDefaultPadding)),
                child: Row(
                  children: [
                    Text(
                      '전체',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: getWidth(5.0),
                    ),
                    Text(
                      '2,379',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: kGrayColor),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFECEEF0),
                        padding: EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding * 0.5)),
                      ),
                      child: Row(
                        children: [
                          Text(
                            '인기순',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: kGrayColor, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.keyboard_arrow_down_sharp, color: kGrayColor,)
                        ],
                      ),
                    ),
                    SizedBox(width: getWidth(kDefaultPadding * 0.5),),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: kMainColor,
                        padding: EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding * 0.5)),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.filter_alt, color: kWhiteColor, size: getWidth(15.0),),
                          Text(
                            ' 필터',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: kWhiteColor, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: SizeConfig.screenWidth,
                padding: EdgeInsets.only(
                  left: getWidth(kDefaultPadding),
                  right: getWidth(kDefaultPadding),
                  bottom: getWidth(kDefaultPadding),
                ),
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 8,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: getWidth(0.7),
                    crossAxisCount: 2,
                    crossAxisSpacing: getWidth(kDefaultPadding * 0.5),
                    mainAxisSpacing: getWidth(kDefaultPadding * 0.5),
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ThemeItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
