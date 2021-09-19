import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class ThemeDetails extends StatelessWidget {
  const ThemeDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding)),
          child: Text(
            '테마정보',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Stack(
          children: [
            Container(
              child: Image.asset('images/theme-details.png'),
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
              left: getWidth(kDefaultPadding),
              right: getWidth(kDefaultPadding),
              bottom: getWidth(kDefaultPadding),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: kMainColor,
                    padding: EdgeInsets.symmetric(
                        vertical: getWidth(kDefaultPadding * 0.5))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '전체보기',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold, color: kWhiteColor),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: kWhiteColor,
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
