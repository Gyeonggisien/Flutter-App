import 'package:antilla/constants.dart';
import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

import 'SignUpScreen1.dart';
import 'components/CancelButton.dart';
import 'components/ConfirmButton.dart';
import 'components/PrevButton.dart';
import 'components/SignUpContent4.dart';
import 'components/SignUpContent5.dart';

class SignUpScreen5 extends StatefulWidget {
  @override
  _SignUpScreenState5 createState() => _SignUpScreenState5();

  // when sign-up screen is first initialized, all static validation variables must set to be false.

}

class _SignUpScreenState5 extends State<SignUpScreen5> {
  SignUpContent4 content = SignUpContent4();

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
              SignUpContent5(),
            ]),
          ),
          Spacer(),
          // original code
          ConfirmButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen5()),
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
