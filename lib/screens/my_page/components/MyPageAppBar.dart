import 'package:antilla/constants.dart';
import 'package:antilla/screens/subscription/SubscriptionScreen.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class MyPageAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 5.0,
      shadowColor: kGrayColor.withOpacity(0.1),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: getWidth(70.0),
            child: Image.asset('images/logo.png'),
          ),
        ],
      ),
      actions: [
        Container(
          width: getWidth(23.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/icons/search.png'),
            ),
          ),
        ),
        SizedBox(
          width: getWidth(10.0),
        ),
        Container(
          width: getWidth(27.0),
          child: Image.asset('images/icons/cart.png'),
        ),
        SizedBox(
          width: getWidth(kDefaultPadding),
        )
      ],
    );
  }
}
