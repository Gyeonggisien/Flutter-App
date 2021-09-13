import 'package:antilla/constants.dart';
import 'package:antilla/screens/search/components/ThemeButton.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class ThemeContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.all(getWidth(kDefaultPadding)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '어떤 테마를 찾고 계세요?',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: getHeight(kDefaultPadding),),
          ThemeButton(),
        ],
      ),
    );
  }
}

