import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class EndPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      children: [
        Container(
          width: SizeConfig.screenWidth,
          height: getHeight(120.0),
          padding: EdgeInsets.symmetric(
              vertical: getHeight(kDefaultPadding * 0.6),
              horizontal: getWidth(kDefaultPadding * 0.7)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Color(0xFFEAEAEB), width: 2.7)),
          child: Row(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    width: SizeConfig.screenWidth! * 0.3,
                    height: getWidth(80.0),
                    child: Image.asset(
                      'images/item1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: getWidth(20.0),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      '그리너리 빈티지',
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: kGrayColor),
                    ),
                    Text(
                      '2021.09.29 종료예정',
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: kButtonColor),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: getWidth(7.0)),
                            decoration: BoxDecoration(
                              color: kButtonColor,
                              borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: Text(
                              '연장하기',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                  color: kWhiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(width: getWidth(10.0),),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: getWidth(7.0)),
                            decoration: BoxDecoration(
                                color: kGray3Color,
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: Text(
                              '반납하기',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                  color: kGrayColor,
                                  fontWeight: FontWeight.bold,),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getHeight(kDefaultPadding * 0.5),
        )
      ],
    );
  }
}
