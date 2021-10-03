import 'package:antilla/constants.dart';
import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:antilla/screens/login2/LoginScreen2.dart';
import 'package:antilla/size_config.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'SignUpScreen2.dart';
import 'components/CancelButton.dart';
import 'components/ConfirmButton.dart';
import 'components/CustomTextField.dart';
import 'components/PrevButton.dart';
import 'components/SignUpContent1.dart';

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
  bool isButtonEnabled = false;

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: '가입을 위해\n',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: kFontColor,
                          ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '이메일',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '을 입력해주세요'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getHeight(32.0),
                  ),
                  CustomTextField(
                      autofocus: true,
                      hintText: '이메일',
                      width: MediaQuery.of(context).size.width,
                      callback: (String? value) {
                        setState(() {
                          if (EmailValidator.validate(value!) == true) {
                            isButtonEnabled = true;
                          } else {
                            isButtonEnabled = false;
                          }
                        });
                      },
                      validator: (String? value) {
                        if (EmailValidator.validate(value!) == true) {
                          isButtonEnabled = true;
                          return "사용할 수 있는 이메일입니다.";
                        } else {
                          isButtonEnabled = false;
                          return null;
                        }
                      }),
                ],
              ),
            ]),
          ),
          Spacer(),
          // original code
          ConfirmButton(
            onPressed: () {
              if (isButtonEnabled) {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen2()),
                  );
                });
              }
            },
            style: isButtonEnabled ? SignUpScreen1.able : SignUpScreen1.disable,
          ),
        ],
      ),
    );
  }
}
