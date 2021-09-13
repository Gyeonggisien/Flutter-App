import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                child: Image.asset('images/icons/antilla-theme.png'),
              ),
            ),
            SizedBox(width: getWidth(kDefaultPadding * 0.25),),
            Expanded(
              child: Container(
                child: Image.asset('images/icons/basic-theme.png'),
              ),
            )
          ],
        ),
        SizedBox(height: getWidth(kDefaultPadding * 0.25),),
        Row(
          children: [
            Expanded(
              child: Container(
                child: Image.asset('images/icons/standard-theme.png'),
              ),
            ),
            SizedBox(width: getWidth(kDefaultPadding * 0.25),),
            Expanded(
              child: Container(
                child: Image.asset('images/icons/premium-theme.png'),
              ),
            )
          ],
        ),
      ],
    );
  }
}
