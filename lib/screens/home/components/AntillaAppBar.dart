import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class AntillaAppBar extends StatelessWidget {
  const AntillaAppBar({
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
          Container(
            width: getWidth(100.0),
            height: getHeight(100.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/logo.png'),
              ),
            ),
          ),
        ],
      ),
      actions: [
        Container(
          width: getWidth(35.0),
          decoration: BoxDecoration(
              image:
              DecorationImage(image: AssetImage('images/icons/bell.png'))),
        ),
        SizedBox(
          width: getWidth(10.0),
        ),
        Container(
          width: getWidth(35.0),
          decoration: BoxDecoration(
              image:
              DecorationImage(image: AssetImage('images/icons/cart.png'))),
        ),
        SizedBox(
          width: getWidth(kDefaultPadding),
        )
      ],
    );
  }
}
