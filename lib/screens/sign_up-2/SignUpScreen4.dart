import 'package:antilla/constants.dart';
import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

import 'SignUpScreen1.dart';
import 'SignUpScreen5.dart';
import 'components/CancelButton.dart';
import 'components/Clause.dart';
import 'components/ConfirmButton.dart';
import 'components/PrevButton.dart';
import 'components/SignUpContent4.dart';

class SignUpScreen4 extends StatefulWidget {
  @override
  _SignUpScreenState4 createState() => _SignUpScreenState4();

  // when sign-up screen is first initialized, all static validation variables must set to be false.

}

class _SignUpScreenState4 extends State<SignUpScreen4> {
  bool isButtonEnabled = false;
  bool agreeAll = false;
  bool agreeEssential = false;
  bool agreeOptional1 = false;
  bool agreeOptional2 = false;

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
                      text: '',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: kFontColor,
                          ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '????????? ?????? ??????',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '???\n??????????????????'),
                      ],
                    ),
                  ),
                  SizedBox(height: getHeight(30.0)),
                  MainClause(
                    color: agreeAll ? kMainColor : kGray2Color,
                    text: '?????? ??????',
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: getWidth(30.0),
                    ),
                    callback: () {
                      setState(() {
                        agreeAll = !agreeAll;
                        if (agreeAll) {
                          changeState(true, true, true, true);
                          checkState();
                        } else if (!agreeAll) {
                          changeState(false, false, false, false);
                          checkState();
                        }
                      });
                    },
                  ),
                  SizedBox(height: getHeight(30.0)),
                  MainClause(
                    color: agreeEssential ? kMainColor : kGray2Color,
                    text: '????????? ?????? ??????(??????)',
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: getWidth(30.0),
                    ),
                    callback: () {
                      setState(() {
                        agreeEssential = !agreeEssential;
                        if (agreeEssential) {
                          checkState();
                          isButtonEnabled = true;
                        } else {
                          checkState();
                          isButtonEnabled = false;
                        }
                      });
                    },
                  ),
                  SizedBox(height: getHeight(30.0)),
                  MainClause(
                    color: agreeOptional1 ? kMainColor : kGray2Color,
                    text: '????????? ?????? ??????(??????)',
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: getWidth(30.0),
                    ),
                    callback: () {
                      setState(() {
                        agreeOptional1 = !agreeOptional1;
                        checkState();
                      });
                    },
                  ),
                  SizedBox(height: getHeight(30.0)),
                  MainClause(
                    color: agreeOptional2 ? kMainColor : kGray2Color,
                    text: '????????? ?????? ?????? ??????(??????)',
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: getWidth(30.0),
                    ),
                    callback: () {
                      setState(() {
                        agreeOptional2 = !agreeOptional2;
                        checkState();
                      });
                    },
                  ),
                  SizedBox(height: getHeight(30.0) * 1.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '???????????????????????? >',
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: kGray2Color),
                      ),
                    ],
                  )
                ],
              ),
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
            style: isButtonEnabled ? SignUpScreen1.able : SignUpScreen1.disable,
          ),
        ],
      ),
    );
  }

  void checkState() {
    setState(() {
      if (agreeEssential && agreeOptional1 && agreeOptional2) {
        agreeAll = true;
        isButtonEnabled = true;
      } else {
        agreeAll = false;
        isButtonEnabled = false;
      }
    });
  }

  void changeState(bool b1, bool b3, bool b4, bool b5) {
    setState(() {
      isButtonEnabled = b1;
      agreeEssential = b3;
      agreeOptional1 = b4;
      agreeOptional2 = b5;
    });
  }
}
