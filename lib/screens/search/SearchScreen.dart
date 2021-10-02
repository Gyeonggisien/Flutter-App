import 'package:antilla/constants.dart';
import 'package:antilla/screens/search/components/HotTheme.dart';
import 'package:antilla/screens/search/components/HotThemeContainer.dart';
import 'package:antilla/screens/search/components/NewIssueContainer.dart';
import 'package:antilla/screens/search/components/RecentContainer.dart';
import 'package:antilla/screens/search/components/SearchContainer.dart';
import 'package:antilla/screens/search/components/ThemeButton.dart';
import 'package:antilla/screens/search/components/ThemeContainer.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchContainer(),
            RecentContainer(),
            ThemeContainer(),
            Container(
              width: SizeConfig.screenWidth,
              height: 7.0,
              color: Color(0xFFE0DDD8),
            ),
            HotThemeContainer(),
            NewIssueContainer(),
          ],
        ),
      ),
    );
  }
}

