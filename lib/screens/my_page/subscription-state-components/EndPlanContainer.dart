import 'package:antilla/constants.dart';
import 'package:antilla/screens/my_page/subscription-state-components/EndPlan.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class EndPlanContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.only(
        left: getWidth(kDefaultPadding),
        right: getWidth(kDefaultPadding),
        bottom: getWidth(kDefaultPadding),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '종료 예정 플랜',
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: kFontColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: getWidth(kDefaultPadding),),
          EndPlan()
        ],
      ),
    );
  }
}
