import 'package:antilla/constants.dart';
import 'package:antilla/screens/subscription/SubscriptionScreen.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class ThemeDetailsAppBar extends StatelessWidget {
  const ThemeDetailsAppBar({
    Key? key,
  }) : super(key: key);

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
          Text(
            '상품 상세',
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(fontWeight: FontWeight.bold),
          )
        ],
      ),
      actions: [
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
