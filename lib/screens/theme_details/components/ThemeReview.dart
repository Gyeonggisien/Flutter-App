import 'package:antilla/constants.dart';
import 'package:antilla/screens/theme_details/components/BestThemeItem.dart';
import 'package:antilla/screens/theme_details/components/Gauge.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';


class ThemeReview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: getWidth(kDefaultPadding),
            right: getWidth(kDefaultPadding),
            bottom: getWidth(kDefaultPadding),
          ),
          child: Row(
            children: [
              Text(
                '상품 리뷰',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                '리뷰 쓰기',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kButtonColor),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: getWidth(kDefaultPadding),
              ),
              BestThemeItem(),
              BestThemeItem(),
              BestThemeItem(),
              SizedBox(
                width: getWidth(kDefaultPadding),
              ),
            ],
          ),
        ),
        Container(
          width: SizeConfig.screenWidth,
          height: getWidth(130.0),
          margin: EdgeInsets.all(
            getWidth(kDefaultPadding),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: kGray3Color, width: 3.0)),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '5.0',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: getWidth(17.0),
                          child: Image.asset('images/icons/star.png'),
                        ),
                        Container(
                          width: getWidth(17.0),
                          child: Image.asset('images/icons/star.png'),
                        ),
                        Container(
                          width: getWidth(17.0),
                          child: Image.asset('images/icons/star.png'),
                        ),
                        Container(
                          width: getWidth(17.0),
                          child: Image.asset('images/icons/star.png'),
                        ),
                        Container(
                          width: getWidth(17.0),
                          child: Image.asset('images/icons/star.png'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getWidth(kDefaultPadding * 0.9)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Gauge(text: '5점', percent: '100%', gauge: 1.0),
                      Gauge(text: '4점', percent: '0%', gauge: 0.0),
                      Gauge(text: '3점', percent: '0%', gauge: 0.0),
                      Gauge(text: '2점', percent: '0%', gauge: 0.0),
                      Gauge(text: '1점', percent: '0%', gauge: 0.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(kDefaultPadding),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: getWidth(16.0),
                    backgroundImage:
                    AssetImage('images/profile.png'),
                    backgroundColor: kWhiteColor,
                  ),
                  SizedBox(
                    width: getWidth(kDefaultPadding * 0.5),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '안틸O',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: getWidth(5.0),
                          ),
                          Text(
                            '2021.08.12',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: kGrayColor),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '5점',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: kGrayColor),
                          ),
                          Container(
                            width: getWidth(15.0),
                            child: Image.asset('images/icons/star.png'),
                          ),
                          Container(
                            width: getWidth(15.0),
                            child: Image.asset('images/icons/star.png'),
                          ),
                          Container(
                            width: getWidth(15.0),
                            child: Image.asset('images/icons/star.png'),
                          ),
                          Container(
                            width: getWidth(15.0),
                            child: Image.asset('images/icons/star.png'),
                          ),
                          Container(
                            width: getWidth(15.0),
                            child: Image.asset('images/icons/star.png'),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: getWidth(kDefaultPadding * 0.5)),
                child: Row(
                  children: [
                    Container(
                      width: getWidth(70.0),
                      height: getWidth(70.0),
                      decoration: BoxDecoration(
                        color: kGray2Color,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    SizedBox(
                      width: getWidth(kDefaultPadding * 0.5),
                    ),
                    Expanded(
                      child: Text(
                        '솔직히 구독상품에서 사용했던 상품이라 사용감이 느껴질까봐 걱정을 많이 했는데요 정말 새 상품 같아요! 앞으로 구독하고 마음에 들었던 상품이 N차에 뜰 때까지 기다리게 될 것 같아요 ㅎㅎㅎ감사합니다!',
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: kGrayColor),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getWidth(kDefaultPadding * 0.5)),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: kMainColor, width: 1.3),
                  fixedSize: Size.fromHeight(
                    getWidth(40.0),
                  ),
                ),
                child: Text(
                  '108개 리뷰 보러가기',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
