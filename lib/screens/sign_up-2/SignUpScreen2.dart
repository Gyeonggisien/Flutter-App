import 'package:antilla/constants.dart';
import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

import 'SignUpScreen1.dart';
import 'SignUpScreen3.dart';
import 'components/CancelButton.dart';
import 'components/ConfirmButton.dart';
import 'components/CustomTextField.dart';
import 'components/PrevButton.dart';
import 'components/ValidationWidget.dart';

class SignUpScreen2 extends StatefulWidget {
  @override
  _SignUpScreenState2 createState() => _SignUpScreenState2();
}

class _SignUpScreenState2 extends State<SignUpScreen2> {
  bool cond1 = false;
  bool cond2 = false;

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: '????????????\n',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: kFontColor,
                          ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '????????????',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '??? ??????????????????'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getHeight(32.0),
                  ),
                  CustomPasswordTextField(
                    hintText: '????????????',
                    callback: (String? text) {
                      RegExp regex = RegExp('[a-zA-Z0-9]');
                      bool cond1 = regex.hasMatch(text!);
                      bool cond2 = text.trim().length >= 8;
                      setState(() {
                        if (cond1 && cond2) {
                          cond1 = true;
                          cond2 = true;
                        } else if (cond1 && !cond2) {
                          cond1 = true;
                          cond2 = false;
                        } else if (!cond1 && cond2) {
                          cond1 = false;
                          cond2 = true;
                        } else {
                          cond1 = false;
                          cond2 = false;
                        }
                      });
                    },
                  ),
                  SizedBox(
                    height: getHeight(10.0),
                  ),
                  ValidationWidget(
                    text: '??????, ?????? ??????',
                    color: (cond1) ? kMainColor : kGrayColor,
                  ),
                  SizedBox(
                    height: getHeight(10.0),
                  ),
                  ValidationWidget(
                    text: '8?????? ??????',
                    color: (cond2) ? kMainColor : kGrayColor,
                  ),
                ],
              ),
            ]),
          ),
          Spacer(),
          // original code
          ConfirmButton(
            onPressed: () {
              if (cond1 && cond2) {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen3()),
                  );
                });
              }
            },
            style:
                (cond1 && cond2) ? SignUpScreen1.able : SignUpScreen1.disable,
          ),
        ],
      ),
    );
  }
}
