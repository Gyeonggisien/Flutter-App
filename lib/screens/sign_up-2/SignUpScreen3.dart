import 'package:antilla/constants.dart';
import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:antilla/screens/sign_up-2/SignUpScreen2.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

import 'SignUpScreen1.dart';
import 'SignUpScreen4.dart';
import 'components/CancelButton.dart';
import 'components/Clause.dart';
import 'components/ConfirmButton.dart';
import 'components/CustomAuthCodeTextField.dart';
import 'components/CustomTextField.dart';
import 'components/PrevButton.dart';
import 'components/TimerWidget.dart';

class SignUpScreen3 extends StatefulWidget {
  @override
  _SignUpScreenState3 createState() => _SignUpScreenState3();
}

class _SignUpScreenState3 extends State<SignUpScreen3> {
  bool isAgree = false;
  bool isButtonEnabled = false;
  bool nameValid = false;
  bool ssnValid = false;
  bool currencyValid = false;
  bool phoneNumValid = false;
  bool authCodeValid = false;

  final double heightPadding = getHeight(30.0);
  final double contentPadding = getWidth(5.0);
  TimerWidget timer = TimerWidget();

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: '????????? ????????? ??????\n',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: kFontColor,
                          ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '????????????',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '??? ????????????'),
                      ],
                    ),
                  ),
                  SizedBox(height: heightPadding),
                  CustomTextField(
                    hintText: '?????? (??? + ??????)',
                    width: SizeConfig.screenWidth!,
                    callback: (text) => {
                      setState(() {
                        if (text!.trim().length > 0) {
                          nameValid = true;
                          changeState();
                        } else {
                          nameValid = false;
                          changeState();
                        }
                      })
                    },
                  ),
                  SizedBox(height: heightPadding),
                  Row(
                    children: [
                      CustomTextField(
                        hintText: '???????????? ?????????',
                        width: SizeConfig.screenWidth! * 0.35,
                        callback: (String? text) {
                          RegExp regex = RegExp('[0-9]');
                          bool cond1 = text!.trim().length == 6;
                          setState(() {
                            if (regex.hasMatch(text) && cond1) {
                              ssnValid = true;
                              changeState();
                            } else {
                              ssnValid = false;
                              changeState();
                            }
                          });
                        },
                      ),
                      SizedBox(width: contentPadding),
                      Text(
                        '-',
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: kMainColor),
                      ),
                      SizedBox(width: contentPadding),
                      CustomTextField(
                        hintText: ' ',
                        width: getWidth(40.0),
                        callback: (String? text) {
                          setState(() {
                            if (text == '1' ||
                                text == '2' ||
                                text == '3' ||
                                text == '4') {
                              ssnValid = true;
                              changeState();
                            } else {
                              ssnValid = false;
                              changeState();
                            }
                          });
                        },
                      ),
                      SizedBox(width: contentPadding),
                      Text(
                        '??? ??? ??? ??? ??? ???',
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(color: kGray2Color),
                      ),
                    ],
                  ),
                  SizedBox(height: heightPadding),
                  CustomDropdownTextField(
                    hintText: '?????????',
                  ),
                  SizedBox(height: heightPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 6,
                        child: CustomTextField(
                          hintText: '010-',
                          callback: (String? text) {
                            RegExp regex = RegExp('[0-9]');
                            bool cond1 = (text!.trim().length > 9) &&
                                (text.trim().length < 12);
                            setState(() {
                              if (regex.hasMatch(text) && cond1) {
                                phoneNumValid = true;
                                changeState();
                              } else {
                                phoneNumValid = false;
                                changeState();
                              }
                            });
                          },
                          width: SizeConfig.screenWidth!,
                        ),
                      ),
                      SizedBox(
                        width: getWidth(8.0),
                      ),
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          onPressed: () {
                            if (!isAgree) {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      BottomSheet(agree: () {
                                        setState(() {
                                          Navigator.pop(context);
                                          isAgree = true;
                                        });
                                      }));
                            } else if (isAgree && Countdown.isOver) {
                              setState(() {
                                Countdown.isOver = false;
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary:
                                Countdown.isOver ? kMainColor : kGray2Color,
                            padding: EdgeInsets.symmetric(
                                vertical: kDefaultPadding * 0.9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            (timer.isRetried && isAgree)
                                ? '???????????? ?????????'
                                : '???????????? ??????',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getHeight(30.0)),
                  if (isAgree)
                    Container(
                      width: SizeConfig.screenWidth!,
                      padding: EdgeInsets.zero,
                      foregroundDecoration: ShapeDecoration(
                        shape: OutlineInputBorder(
                          borderSide: BorderSide(color: kMainColor, width: 2.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          CustomAuthCodeTextField(
                            hintText: '????????????',
                            width: SizeConfig.screenWidth! * 0.72,
                            onChanged: (String? value) {
                              if (value!.trim().length > 0) {
                                authCodeValid = true;
                                changeState();
                              } else {
                                authCodeValid = false;
                                changeState();
                              }
                            },
                          ),
                          timer,
                        ],
                      ),
                    )
                ],
              ),
            ]),
          ),
          Spacer(),
          // original code
          ConfirmButton(
            onPressed: () {
              print(';asd');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen4()),
              );
            },
            style: isButtonEnabled ? SignUpScreen1.able : SignUpScreen1.disable,
          ),
        ],
      ),
    );
  }

  void changeState() {
    isButtonEnabled = (nameValid &&
        ssnValid &&
        currencyValid &&
        phoneNumValid &&
        authCodeValid);
  }
}

class BottomSheet extends StatefulWidget {
  final void Function()? agree;

  BottomSheet({required this.agree});

  @override
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  bool agreeAll = false;
  bool agreeEssential = false;
  List<bool> agreeOptional = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: kDefaultPadding,
            right: kDefaultPadding,
            child: Icon(Icons.keyboard_arrow_down),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: kDefaultPadding,
                    left: kDefaultPadding,
                    top: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '????????? ?????? ??????',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: getHeight(10.0),
                      ),
                      MainClause(
                        color: agreeEssential ? kMainColor : kGray2Color,
                        callback: callbackEssential,
                        text: '?????? ?????? ?????? ??????(??????)',
                      ),
                      SubClause(
                        text: '????????? ???????????? ?????? ??????',
                        color: agreeOptional[0] ? kMainColor : kGray2Color,
                        callback: callbackOptional1,
                      ),
                      SubClause(
                        text: '????????? ???????????? ????????????',
                        color: agreeOptional[1] ? kMainColor : kGray2Color,
                        callback: callbackOptional2,
                      ),
                      SubClause(
                        text: '?????????????????? ????????????',
                        color: agreeOptional[2] ? kMainColor : kGray2Color,
                        callback: callbackOptional3,
                      ),
                      SubClause(
                        text: '???????????? ??????/??????/???????????? ??????',
                        color: agreeOptional[3] ? kMainColor : kGray2Color,
                        callback: callbackOptional4,
                      ),
                      SubClause(
                        text: '???????????? ??? 3??? ?????? ??????',
                        color: agreeOptional[4] ? kMainColor : kGray2Color,
                        callback: callbackOptional5,
                      ),
                      SizedBox(
                        height: getHeight(10.0),
                      ),
                    ],
                  ),
                ),
              ),
              ConfirmButton(
                onPressed: () {
                  if (agreeAll) {
                    widget.agree;
                  }
                },
                style: agreeAll ? SignUpScreen1.able : SignUpScreen1.disable,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // functions for BottomSheet
  void callbackEssential() {
    setState(() {
      agreeEssential = !agreeEssential;
      if (agreeEssential) {
        agreeAll = true;
        for (int i = 0; i < agreeOptional.length; i++) {
          agreeOptional[i] = true;
        }
      } else if (!agreeEssential) {
        agreeAll = false;
        for (int i = 0; i < agreeOptional.length; i++) {
          agreeOptional[i] = false;
        }
      }
    });
  }

  void callbackOptional1() {
    setState(() {
      agreeOptional[0] = !agreeOptional[0];
      callbackRepetitious();
    });
  }

  void callbackOptional2() {
    setState(() {
      agreeOptional[1] = !agreeOptional[1];
      callbackRepetitious();
    });
  }

  void callbackOptional3() {
    setState(() {
      agreeOptional[2] = !agreeOptional[2];
      callbackRepetitious();
    });
  }

  void callbackOptional4() {
    setState(() {
      agreeOptional[3] = !agreeOptional[3];
      callbackRepetitious();
    });
  }

  void callbackOptional5() {
    setState(() {
      agreeOptional[4] = !agreeOptional[4];
      callbackRepetitious();
    });
  }

  void callbackRepetitious() {
    if (agreeOptional.every((element) => element == true)) {
      agreeEssential = true;
      agreeAll = true;
    } else if (agreeOptional.every((element) => element == false)) {
      agreeEssential = false;
      agreeAll = false;
    }
  }
}
