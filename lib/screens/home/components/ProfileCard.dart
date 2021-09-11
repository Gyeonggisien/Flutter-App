import 'package:antilla/constants.dart';
import 'package:antilla/screens/home/components/ProfileCardContent.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.all(getWidth(kDefaultPadding)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: getWidth(kDefaultPadding) * 1.5,
                vertical: getWidth(kDefaultPadding) * 1.4),
            decoration: kCardBoxDecoration,
            child: ProfileCardContent(),
          ),
        ],
      ),
    );
  }
}
