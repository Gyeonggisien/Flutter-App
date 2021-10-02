import 'package:antilla/constants.dart';
import 'package:antilla/screens/cart/CartScreen.dart';
import 'package:antilla/screens/subscription/SubscriptionScreen.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class AntillaAppBar extends StatelessWidget {
  AntillaAppBar({required this.title});

  final String? title;

  Text buildText(BuildContext context) {
    return Text(
      title!,
      style: Theme.of(context)
          .textTheme
          .headline3!
          .copyWith(fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
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
          title! == "antilla"
              ? Container(
                  width: getWidth(70.0),
                  child: Image.asset('images/logo.png'),
                )
              : buildText(context)
        ],
      ),
      actions: [
        Container(
          width: getWidth(27.0),
          child: Image.asset('images/icons/notification.png'),
        ),
        SizedBox(
          width: getWidth(kDefaultPadding * 0.5),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartScreen()));
          },
          child: Container(
            width: getWidth(27.0),
            child: Image.asset('images/icons/cart.png'),
          ),
        ),
        SizedBox(
          width: getWidth(kDefaultPadding),
        )
      ],
    );
  }
}
