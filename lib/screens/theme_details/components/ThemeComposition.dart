import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class ThemeComposition extends StatelessWidget {
  ThemeComposition({required this.name, required this.title, required this.image});

  final name;
  final title;
  final image;

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
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    width: SizeConfig.screenWidth! * 0.3,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: getWidth(30.0),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      name,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: kGrayColor),
                    ),
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      '상품 상세 보기',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Color(0xFF3F4F68), decoration: TextDecoration.underline),
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
