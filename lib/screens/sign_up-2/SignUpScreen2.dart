import 'package:antilla/constants.dart';
import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

import 'SignUpScreen1.dart';
import 'SignUpScreen3.dart';
import 'components/CancelButton.dart';
import 'components/ConfirmButton.dart';
import 'components/PrevButton.dart';
import 'components/SignUpContent2.dart';

class SignUpScreen2 extends StatefulWidget {
  @override
  _SignUpScreenState2 createState() => _SignUpScreenState2();
}

class _SignUpScreenState2 extends State<SignUpScreen2> {
  SignUpContent2 content = SignUpContent2();

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
                                builder: (context) => SignUpScreen1()));
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
            ]),
          ),
          Spacer(),
          // original code
          ConfirmButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen3()),
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
