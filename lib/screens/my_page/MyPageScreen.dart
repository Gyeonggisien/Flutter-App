import 'package:antilla/constants.dart';
import 'package:antilla/screens/my_page/SubscriptionStateScreen.dart';
import 'package:antilla/screens/my_page/components/MyPageAppBar.dart';
import 'package:antilla/screens/my_page/components/SubscriptionTotal.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  final List<String> title = ['내 정보', '구독 내역', '내가 저장한 테마'];
  final List<Widget> screens = [SubscriptionStateScreen(), SubscriptionStateScreen(), SubscriptionStateScreen()];
  final List<String> title2 = ['인증 및 보안', '알림', '결제'];
  final List<String> title3 = ['공지사항', '문의하기 및 Q&A'];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: MyPageAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding)),
              child: SizedBox(
                width: SizeConfig.screenWidth,
                height: getWidth(180.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: CircleAvatar(
                        radius: getWidth(55.0),
                        backgroundColor: kGray2Color,
                        child: CircleAvatar(
                          radius: getWidth(54.0),
                          backgroundImage: AssetImage('images/profile.png'),
                          backgroundColor: kWhiteColor,
                        ),
                      )
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                                text: '프로힙합러',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                        color: kMainColor,
                                        fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text: ' 안틸라님',
                                      style: TextStyle(color: kFontColor))
                                ]),
                          ),
                          SizedBox(height: getWidth(kDefaultPadding * 0.7),),
                          Row(
                            children: [
                              SubscriptionTotal(
                                color: kBasicColor,
                                text: 'B X 1',
                              ),
                              SizedBox(
                                width: getWidth(5.0),
                              ),
                              SubscriptionTotal(
                                color: kStandColor,
                                text: 'S X 1',
                              ),
                              SizedBox(
                                width: getWidth(5.0),
                              ),
                              SubscriptionTotal(
                                color: kButtonColor,
                                text: 'P X 1',
                              ),
                            ],
                          ),
                          SizedBox(height: getWidth(kDefaultPadding * 0.7),),
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(color: kMainColor, width: 2.0),
                            ),
                            child: Text(
                              '테스트 다시하기',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: kMainColor,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemExtent: getWidth(45.0),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => screens[index]));
                  },
                  child: ListTile(
                    title: Text(
                      title[index],
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right_sharp),
                  ),
                );
              },
            ),
            Divider(
              color: kGray3Color,
              thickness: 1.7,
              indent: getWidth(kDefaultPadding),
              endIndent: getWidth(kDefaultPadding),
            ),
            ListTile(
                title: Text(
              '⚙ 앱 설정',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: kMainColor, fontWeight: FontWeight.bold),
            )),
            ListView.builder(
              shrinkWrap: true,
              itemExtent: getWidth(45.0),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    title2[index],
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right_sharp),
                );
              },
            ),
            Divider(
              color: kGray3Color,
              thickness: 1.7,
              indent: getWidth(kDefaultPadding),
              endIndent: getWidth(kDefaultPadding),
            ),
            ListTile(
                title: Text(
              '👤 고객 센터',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: kMainColor, fontWeight: FontWeight.bold),
            )),
            ListView.builder(
              shrinkWrap: true,
              itemExtent: getWidth(45.0),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    title3[index],
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right_sharp),
                );
              },
            ),
            SizedBox(height: getWidth(kDefaultPadding),),
          ],
        ),
      ),
    );
  }
}
