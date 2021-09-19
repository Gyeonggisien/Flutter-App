import 'package:antilla/constants.dart';
import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:antilla/screens/sign_up/components/ConfirmButton.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent1.dart';
import 'SignUpScreen2.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

import 'SignUpScreen3.dart';
import 'components/CancelButton.dart';
import 'components/PrevButton.dart';
import 'components/SignUpContent2.dart';

class SignUpScreen2 extends StatefulWidget {
  @override
  _SignUpScreenState2 createState() => _SignUpScreenState2();
}

class _SignUpScreenState2 extends State<SignUpScreen2> {
  bool isButtonEnabled = false;

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
                SignUpContent2(),
              ],
            ),
          ),
          Spacer(),
          // original code
          ConfirmButton(
            onPressed: () {
              setState(() {
                print(
                    '******************isButtonEnabled = $isButtonEnabled ******************');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen3()));
              });
            },
            style: isButtonEnabled ? able : disable,
          ),
        ],
      ),
    );
  }
}
