import 'package:antilla/constants.dart';
import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

import 'SignUpScreen2.dart';
import 'components/CancelButton.dart';
import 'components/ConfirmButton.dart';
import 'components/PrevButton.dart';
import 'components/SignUpContent1.dart';
import 'components/SkipButton.dart';

class SignUpScreen1 extends StatefulWidget {
  @override
  _SignUpScreenState1 createState() => _SignUpScreenState1();

  // when sign-up screen is first initialized, all static validation variables must set to be false.

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

class _SignUpScreenState1 extends State<SignUpScreen1> {
  SignUpContent1 content = SignUpContent1();

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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(bottom: kDefaultPadding * 2.0),
                child: Row(
                  children: [
                    PrevButton(onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
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
              SignUpContent1(),
            ]),
          ),
          Spacer(),
          // original code
          ConfirmButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen2()),
                );
              });
            },
            style: content.isButtonEnabled
                ? SignUpScreen1.able
                : SignUpScreen1.disable,
          ),
        ],
      ),
    );
  }
}
