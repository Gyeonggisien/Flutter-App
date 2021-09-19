import 'package:antilla/constants.dart';
import 'package:antilla/screens/theme_details/components/RecommendTheme.dart';
import 'package:antilla/screens/theme_details/components/SimilarTheme.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';


class SimilarThemeContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Text(
            '비슷한 분위기의 테마',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              SizedBox(width: getWidth(kDefaultPadding),),
              SimilarTheme(),
              SimilarTheme(),
              SimilarTheme(),
              SizedBox(width: getWidth(kDefaultPadding),),
            ],
          ),
        ),
        SizedBox(height: getHeight(kDefaultPadding),),
      ],
    );
  }
}
