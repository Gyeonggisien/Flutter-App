import 'package:antilla/constants.dart';
import 'package:antilla/screens/BottomNavigation.dart';
import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:antilla/screens/sign_up/components/ConfirmButton.dart';
import 'package:antilla/screens/sign_up/components/FavoriteContainer.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent1.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent2.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent3.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent4.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent5.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/CancelButton.dart';
import 'components/PrevButton.dart';
import 'components/SkipButton.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();

  // when sign-up screen is first initialized, all static validation variables must set to be false.
  static void reset() {
    SignUpContent1.isButtonEnabled = false;
    SignUpContent2.cond1 = false;
    SignUpContent2.cond2 = false;
    SignUpContent2.isButtonEnabled = false;
    SignUpContent3.isAgree = false;
    SignUpContent3.nameValid = false;
    SignUpContent3.ssnValid = false;
    SignUpContent3.currencyValid = false;
    SignUpContent3.phoneNumValid = false;
    SignUpContent3.authCodeValid = false;
    SignUpContent3.isButtonEnabled = false;
    SignUpContent4.isButtonEnabled = false;
  }

  static final dynamic able = ElevatedButton.styleFrom(
    primary: kMainColor,
    padding: EdgeInsets.only(
        top: kDefaultPadding * 1.3, bottom: kDefaultPadding * 1.9),
  );
  static final dynamic disable = ElevatedButton.styleFrom(
    primary: kSearchColor,
    padding: EdgeInsets.only(
        top: kDefaultPadding * 1.3, bottom: kDefaultPadding * 1.9),
  );
}

class _SignUpScreenState extends State<SignUpScreen> {
  int currentIndex = 2;

  final List<Widget> screens = [
    SignUpContent1(),
    SignUpContent2(),
    SignUpContent3(),
    SignUpContent4(),
    SignUpContent5(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return (currentIndex != 4)
        ? Scaffold(
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
                          padding:
                              EdgeInsets.only(bottom: kDefaultPadding * 2.0),
                          child: Row(
                            children: [
                              PrevButton(onPressed: () {
                                setState(() {
                                  SignUpScreen.reset();
                                  if (currentIndex > 0) {
                                    currentIndex--;
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen()));
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
                        screens[currentIndex],
                      ]),
                ),
                Spacer(),
                // original code
                ConfirmButton(
                  onPressed: () {
                    setState(() {
                      if (isEnabled(currentIndex)) {
                        if (currentIndex >= 0 && currentIndex < 4) {
                          currentIndex++;
                        }
                      }
                    });
                  },
                  style: isEnabled(currentIndex)
                      ? SignUpScreen.able
                      : SignUpScreen.disable,
                ),
              ],
            ),
          )
        : Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(200),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding * 1.5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        SkipButton(onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavigation()),
                          );
                        }),
                      ],
                    ),
                    SignUpContent5(),
                  ],
                ),
              ),
            ),
            body: FavoriteContainer(),
            bottomSheet: Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              width: double.infinity,
              height: getHeight(kDefaultPadding * 3.75),
              child: ConfirmButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigation()),
                  );
                },
              ),
            ),
          );
  }

  bool isEnabled(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return SignUpContent1.isButtonEnabled;
        break;
      case 1:
        return (SignUpContent2.cond1 && SignUpContent2.cond2);
        break;
      case 2:
        return SignUpContent3.isButtonEnabled;
        break;
      case 3:
        //confirm4();
        return SignUpContent4.isButtonEnabled;
        break;
      case 4:
        return SignUpContent5.isButtonEnabled;
        break;
      default:
        return false;
    }
  }

  void confirm4() {
    setState(() {
      if (SignUpContent4.agreeEssential || SignUpContent4.agreeAll) {
        SignUpContent4.isButtonEnabled = true;
      } else {
        SignUpContent4.isButtonEnabled = false;
      }
    });
  }
}
