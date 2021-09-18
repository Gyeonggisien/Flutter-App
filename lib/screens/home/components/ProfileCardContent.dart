import 'package:antilla/constants.dart';
import 'package:antilla/screens/home/components/SubscriptionTotal.dart';
import 'package:antilla/size_config.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


class ProfileCardContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text.rich(
              TextSpan(
                text: '안틸라님,',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(
                    color: kFontColor,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                      text: ' 취향분석 전',
                      style: TextStyle(color: kMainColor)),
                  TextSpan(text: '이시네요?'),
                ],
              ),
            ),
            Spacer(),
            Icon(Icons.keyboard_arrow_right, size: getWidth(23.0), color: kGrayColor,),
          ],
        ),
        SizedBox(height: getHeight(kDefaultPadding * 0.75)),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '남은 구독일',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: kGrayColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: getHeight(kDefaultPadding * 0.5),
                  ),
                  SubscriptionTotal(
                      text: 'B X 1',
                      color: kBasicColor,
                      day: '14'),
                  SizedBox(
                    height: getHeight(kDefaultPadding * 0.5),
                  ),
                  SubscriptionTotal(
                      text: 'S X 1',
                      color: kStandColor,
                      day: '34'),
                  SizedBox(
                    height: getHeight(kDefaultPadding * 0.5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: kMainColor),
                      ),
                    ),
                    child: AutoSizeText(
                      '🏠 나의 취향 분석하러 가기',
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: kMainColor, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Image.asset('images/subscription-status.png'),
            )
          ],
        ),
      ],
    );
  }
}
