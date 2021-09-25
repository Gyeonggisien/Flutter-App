import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class RecommendItem extends StatelessWidget {
  RecommendItem({required this.image, required this.title, required this.plan});

  final image;
  final title;
  final plan;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.only(right: getWidth(4.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: getWidth(168.0),
            height: getWidth(100.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(6.0)),
          ),
          SizedBox(
            height: getHeight(5.0),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline4!.copyWith(),
              ),
              SizedBox(
                width: getWidth(5.0),
              ),
              Container(
                height: getHeight(kDefaultPadding * 0.7),
                decoration: BoxDecoration(
                    border: Border.all(color: kGray2Color),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getWidth(6.0),
                    ),
                    child: Text(
                      plan,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: plan == 'BASIC' ? kBasicColor : plan == 'STANDARD' ? kStandColor : kPremiumColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
