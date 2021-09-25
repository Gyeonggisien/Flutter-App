import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class NewIssue extends StatelessWidget {
  NewIssue({required this.text, required this.image, required this.userName});

  final text;
  final image;
  final userName;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      children: [
        Container(
          width: SizeConfig.screenWidth,
          height: getWidth(90.0),
          padding: EdgeInsets.symmetric(
              vertical: getHeight(kDefaultPadding * 0.4),
              horizontal: getWidth(kDefaultPadding * 0.7)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Color(0xFFEAEAEB), width: 2.7)),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Container(
                  width: SizeConfig.screenWidth! * 0.3,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: getWidth(30.0),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      userName,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: kGray2Color),
                    ),
                    Text(
                      '> 26    ♥ 10',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.red),
                    ),
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
