import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SubscriptionAppBar extends StatelessWidget {
  const SubscriptionAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 5.0,
      shadowColor: kGrayColor.withOpacity(0.1),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '테마 구독',
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(fontWeight: FontWeight.bold),
          )
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
          width: getWidth(35.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/icons/cart.png'),
            ),
          ),
        ),
        SizedBox(
          width: getWidth(kDefaultPadding),
        )
      ],
    );
  }
}
