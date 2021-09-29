import 'package:antilla/constants.dart';
import 'package:antilla/screens/my_page/subscription-state-components/EndPlan.dart';
import 'package:antilla/screens/my_page/subscription-state-components/EndPlanContainer.dart';
import 'package:antilla/screens/my_page/subscription-state-components/MyPageSubscriptionAppBar.dart';
import 'package:antilla/screens/my_page/subscription-state-components/ProfileCard.dart';
import 'package:antilla/size_config.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

class SubscriptionStateScreen extends StatelessWidget {
  const SubscriptionStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: MyPageSubscriptionAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileCard(),
            EndPlanContainer(),
            Container(
              height: 500.0,
              child: ExpandableTheme(
                data: ExpandableThemeData(
                  iconColor: kGrayColor,
                  useInkWell: true,
                ),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    CustomCard(text: 'BASIC 플랜'),
                    CustomCard(text: 'STANDARD 플랜'),
                    CustomCard(text: 'PREMIUM 플랜'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandableNotifier(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding) * 0.2, vertical: getWidth(kDefaultPadding * 0.1)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(color: kGray2Color)
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        text,
                        style: Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    collapsed: Container(),
                    expanded: Padding(
                      padding: EdgeInsets.all(getWidth(kDefaultPadding * 0.5)),
                      child: EndPlan(),
                    ),
                    builder: (_, collapsed, expanded) {
                      return Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: ExpandableThemeData(crossFadePoint: 0),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        )),
        SizedBox(height: getWidth(kDefaultPadding),),
      ],
    );
  }
}
