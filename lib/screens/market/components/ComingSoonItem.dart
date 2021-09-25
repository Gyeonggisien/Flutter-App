import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class ComingSoonItem extends StatelessWidget {
  ComingSoonItem({required this.dateText, this.title});

  final dateText;
  final title;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Row(
      children: [
        SizedBox(
          height: getWidth(270.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: getWidth(150.0),
                    height: getWidth(150.0),
                    decoration: BoxDecoration(
                        color: kGray2Color,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  SizedBox(
                    height: getWidth(10.0),
                  ),
                  Text(
                    dateText,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.bold, color: kMainColor),
                  ),
                  SizedBox(
                    height: getWidth(3.0),
                  ),
                  Container(
                    width: getWidth(150.0),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  SizedBox(
                    height: getWidth(3.0),
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: kButtonColor
                ),
                child: Text(
                  '✉ 알림 받기',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: kWhiteColor, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: getWidth(kDefaultPadding * 0.5),
        ),
      ],
    );
  }
}
