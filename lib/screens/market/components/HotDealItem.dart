import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class HotDealItem extends StatelessWidget {
  HotDealItem(
      {required this.dateText,
      required this.title,
      required this.name,
      required this.percent,
      required this.price});

  final dateText;
  final title;
  final name;
  final percent;
  final price;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Row(
      children: [
        SizedBox(
          height: getWidth(250.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: getWidth(150.0),
                    height: getWidth(150.0),
                    decoration: BoxDecoration(
                        color: kGray2Color,
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  Positioned(
                    left: getWidth(8.0),
                    bottom: getWidth(8.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: getWidth(8.0), vertical: getWidth(5.0)),
                      child: Text(dateText, style: Theme.of(context).textTheme.headline4!.copyWith(color: kWhiteColor, fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: getWidth(10.0),
              ),
              Text(
                name,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.bold, color: kGrayColor),
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
              Row(
                children: [
                  Text(
                    percent,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold, color: kMainColor),
                  ),
                  SizedBox(
                    width: getWidth(3.0),
                  ),
                  Text(
                    price,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,),
                  ),
                ],
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
