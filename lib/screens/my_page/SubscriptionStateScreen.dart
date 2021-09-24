import 'package:antilla/constants.dart';
import 'package:antilla/screens/my_page/subscription-state-components/ProfileCard.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SubscriptionStateScreen extends StatelessWidget {
  const SubscriptionStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: SingleChildScrollView(child: ProfileCard()),
    );
  }
}
