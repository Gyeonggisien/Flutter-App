import 'package:antilla/constants.dart';
import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:antilla/screens/sign_up/components/ConfirmButton.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent1.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent2.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent3.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent4.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

import 'components/CancelButton.dart';
import 'components/PrevButton.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();

  static final List<Widget> screens = [
    SignUpContent1(),
    SignUpContent2(),
    SignUpContent3(),
    SignUpContent4(),
  ];
}

class _SignUpScreenState extends State<SignUpScreen> {
  int currentIndex = 0;

  dynamic able = ElevatedButton.styleFrom(
    primary: kMainColor,
    padding: EdgeInsets.only(
        top: kDefaultPadding * 1.3, bottom: kDefaultPadding * 1.9),
  );
  dynamic disable = ElevatedButton.styleFrom(
    primary: kSearchColor,
    padding: EdgeInsets.only(
        top: kDefaultPadding * 1.3, bottom: kDefaultPadding * 1.9),
  );

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
                  child: Row(
                    children: [
                      PrevButton(onPressed: () {
                        setState(() {
                          if (currentIndex > 0) {
                            currentIndex--;
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          }
                        });
                      }),
                      Spacer(),
                      CancelButton(onPressed: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        });
                      }),
                    ],
                  ),
                ),
                SignUpScreen.screens[currentIndex],
              ],
            ),
          ),
          Spacer(),
          // original code
          ConfirmButton(
            onPressed: () {
              setState(() {
                print(
                    '******************isButtonEnabled = ${SignUpContent1.isButtonEnabled}******************');
                if (SignUpContent1.isButtonEnabled) {
                  if (currentIndex >= 0 && currentIndex < 3) {
                    currentIndex++;
                  }
                }
              });
            },
            style: SignUpContent1.isButtonEnabled ? able : disable,
          ),
        ],
      ),
    );
  }
}
