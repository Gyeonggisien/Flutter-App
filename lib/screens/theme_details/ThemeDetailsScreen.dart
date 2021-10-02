import 'package:antilla/screens/components/AntillaAppBar.dart';
import 'package:antilla/screens/theme_details/components/SimilarThemeContainer.dart';
import 'package:antilla/screens/theme_details/components/ThemeCompositionContainer.dart';
import 'package:antilla/screens/theme_details/components/RecommendThemeContainer.dart';
import 'package:antilla/screens/theme_details/components/ThemeDetails.dart';
import 'package:antilla/screens/theme_details/components/ThemeInfo.dart';
import 'package:antilla/screens/theme_details/components/ThemeReview.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class ThemeDetailsScreen extends StatelessWidget {
  const ThemeDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AntillaAppBar(title: "상품 상세",),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenWidth,
              child: Image.asset(
                'images/subscription-basic.png',
                fit: BoxFit.cover,
              ),
            ),
            ThemeInfo(),
            ThemeCompositionContainer(),
            ThemeDetails(),
            ThemeReview(),
            RecommendThemeContainer(),
            SimilarThemeContainer(),
          ],
        ),
      ),
    );
  }
}
