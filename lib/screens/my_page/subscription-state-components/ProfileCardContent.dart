import 'package:antilla/constants.dart';
import 'package:antilla/screens/home/components/SubscriptionTotal.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';


class ProfileCardContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
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
                  SubscriptionTotal(
                      text: 'P X 1',
                      color: kButtonColor,
                      day: '34'),
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
