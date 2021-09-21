import 'package:antilla/constants.dart';
import 'package:antilla/screens/my_page/components/MyPageAppBar.dart';
import 'package:antilla/screens/my_page/components/SubscriptionTotal.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  final List<String> title = ['내 정보', '구독 내역', '내가 저장한 테마'];
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
            SizedBox(
              width: SizeConfig.screenWidth,
              height: getWidth(180.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset('images/profile.png'),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0)
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: '프로힙합러',
                            style: Theme.of(context).textTheme.headline2!.copyWith(color: kMainColor, fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(text: ' 안틸라님', style: TextStyle(color: kFontColor))
                            ]
                          ),
                        ),
                        Row(
                          children: [
                            SubscriptionTotal(
                              color: kBasicColor,
                              text: 'B X 1',
                            ),
                            SizedBox(width: getWidth(5.0),),
                            SubscriptionTotal(
                              color: kStandColor,
                              text: 'S X 1',
                            ),
                            SizedBox(width: getWidth(5.0),),
                            SubscriptionTotal(
                              color: kButtonColor,
                              text: 'P X 1',
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(8),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    title[index],
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
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
              '⚙ 앱 설정',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: kMainColor, fontWeight: FontWeight.bold),
            )),
            ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(8),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    title2[index],
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
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
              padding: EdgeInsets.all(8),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    title3[index],
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right_sharp),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

