import 'package:antilla/constants.dart';
import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:antilla/screens/sign_up-2/SignUpScreen2.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

import 'SignUpScreen1.dart';
import 'SignUpScreen4.dart';
import 'components/CancelButton.dart';
import 'components/ConfirmButton.dart';
import 'components/PrevButton.dart';
import 'components/SignUpContent3.dart';

class SignUpScreen3 extends StatefulWidget {
  @override
  _SignUpScreenState3 createState() => _SignUpScreenState3();
}

class _SignUpScreenState3 extends State<SignUpScreen3> {
  SignUpContent3 content = SignUpContent3();

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
                                builder: (context) => SignUpScreen2()));
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
              SignUpContent3(),
            ]),
          ),
          Spacer(),
          // original code
          ConfirmButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen4()),
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
