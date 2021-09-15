import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/ConfirmButton.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent1.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent2.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent3.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent4.dart';
import 'package:antilla/screens/sign_up/components/TopButton.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final List<Widget> screens = [
    SignUpContent1(),
    SignUpContent2(),
    SignUpContent3(),
    SignUpContent4(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding * 1.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: kDefaultPadding * 2.0),
                  child: TopButton(),
                ),
                screens[currentIndex],
              ],
            ),
          ),
          Spacer(),
          ConfirmButton(
            onPressed: () {
              setState(() {
                if(currentIndex >= 0 && currentIndex < 3) {
                  currentIndex++;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
