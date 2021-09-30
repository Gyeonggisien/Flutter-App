import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up-2/SignUpScreen1.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

import 'Clause.dart';
import 'ConfirmButton.dart';
import 'CustomAuthCodeTextField.dart';
import 'CustomTextField.dart';
import 'TimerWidget.dart';

class SignUpContent3 extends StatefulWidget {
  static bool isAgree = false;
  bool isButtonEnabled = false;
  bool nameValid = false;
  bool ssnValid = false;
  bool currencyValid = false;
  bool phoneNumValid = false;
  bool authCodeValid = false;

  void changeState() {
    isButtonEnabled = (nameValid &&
        ssnValid &&
        currencyValid &&
        phoneNumValid &&
        authCodeValid);
  }

  @override
  _SignUpContent3State createState() => _SignUpContent3State();
}

class _SignUpContent3State extends State<SignUpContent3> {
  final double heightPadding = getHeight(30.0);
  final double contentPadding = getWidth(5.0);
  TimerWidget timer = TimerWidget();
  //TimerClass timer = TimerClass();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: '안틸라 이용을 위해\n',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: kFontColor,
                ),
            children: <TextSpan>[
              TextSpan(
                  text: '본인확인', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '을 해주세요'),
            ],
          ),
        ),
        SizedBox(height: heightPadding),
        CustomTextField(
          hintText: '이름 (성 + 이름)',
          width: SizeConfig.screenWidth!,
          callback: (text) => callbackName(text),
        ),
        SizedBox(height: heightPadding),
        Row(
          children: [
            CustomTextField(
              hintText: '주민번호 앞자리',
              width: SizeConfig.screenWidth! * 0.35,
              callback: (text) => callbackPassword(text),
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
              callback: (text) => callbackSsnBack(text),
            ),
            SizedBox(width: contentPadding),
            Text(
              '● ● ● ● ● ●',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: kGray2Color),
            ),
          ],
        ),
        SizedBox(height: heightPadding),
        CustomDropdownTextField(
          hintText: '통신사',
        ),
        SizedBox(height: heightPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 6,
              child: CustomTextField(
                hintText: '010-',
                callback: (text) => callbackPhoneNum(text),
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
                  if (!SignUpContent3.isAgree) {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) => BottomSheet());
                  } else if (SignUpContent3.isAgree && Countdown.isOver) {
                    timerChange();
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Countdown.isOver ? kMainColor : kGray2Color,
                  padding:
                      EdgeInsets.symmetric(vertical: kDefaultPadding * 0.9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  (timer.isRetried && SignUpContent3.isAgree)
                      ? '인증번호 재전송'
                      : '인증번호 받기',
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
        if (SignUpContent3.isAgree)
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
                  hintText: '인증번호',
                  width: SizeConfig.screenWidth! * 0.72,
                  onChanged: (String? value) {
                    if (value!.trim().length > 0) {
                      widget.authCodeValid = true;
                      widget.changeState();
                    } else {
                      widget.authCodeValid = false;
                      widget.changeState();
                    }
                  },
                ),
                timer,
              ],
            ),
          )
      ],
    );
  }

  void timerChange() {
    setState(() {
      Countdown.isOver = false;
    });
  }

  void callbackName(String? text) {
    setState(() {
      if (text!.trim().length > 0) {
        widget.nameValid = true;
        widget.changeState();
      } else {
        widget.nameValid = false;
        widget.changeState();
      }
    });
  }

  void callbackPassword(String? text) {
    RegExp regex = RegExp('[0-9]');
    bool cond1 = text!.trim().length == 6;
    setState(() {
      if (regex.hasMatch(text) && cond1) {
        widget.ssnValid = true;
        widget.changeState();
      } else {
        widget.ssnValid = false;
        widget.changeState();
      }
    });
  }

  void callbackSsnBack(String? text) {
    setState(() {
      if (text == '1' || text == '2' || text == '3' || text == '4') {
        widget.ssnValid = true;
        widget.changeState();
      } else {
        widget.ssnValid = false;
        widget.changeState();
      }
    });
  }

  void callbackPhoneNum(String? text) {
    RegExp regex = RegExp('[0-9]');
    bool cond1 = (text!.trim().length > 9) && (text.trim().length < 12);
    setState(() {
      if (regex.hasMatch(text) && cond1) {
        widget.phoneNumValid = true;
        widget.changeState();
      } else {
        widget.phoneNumValid = false;
        widget.changeState();
      }
    });
  }
}

class BottomSheet extends StatefulWidget {
  const BottomSheet({Key? key}) : super(key: key);

  static bool agreeAll = false;
  static bool agreeEssential = false;
  static List<bool> agreeOptional = [false, false, false, false, false];

  @override
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
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
                      '휴대폰 인증 동의',
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
                        color: BottomSheet.agreeEssential
                            ? kMainColor
                            : kGray2Color,
                        callback: callbackEssential,
                        text: '본인 인증 이용 동의(필수)',
                      ),
                      SubClause(
                        text: '휴대폰 본인확인 이용 약관',
                        color: BottomSheet.agreeOptional[0]
                            ? kMainColor
                            : kGray2Color,
                        callback: callbackOptional1,
                      ),
                      SubClause(
                        text: '통신사 본인확인 이용약관',
                        color: BottomSheet.agreeOptional[1]
                            ? kMainColor
                            : kGray2Color,
                        callback: callbackOptional2,
                      ),
                      SubClause(
                        text: '고유식별정보 처리동의',
                        color: BottomSheet.agreeOptional[2]
                            ? kMainColor
                            : kGray2Color,
                        callback: callbackOptional3,
                      ),
                      SubClause(
                        text: '개인정보 수집/이용/취급위탁 동의',
                        color: BottomSheet.agreeOptional[3]
                            ? kMainColor
                            : kGray2Color,
                        callback: callbackOptional4,
                      ),
                      SubClause(
                        text: '개인정보 제 3자 제공 동의',
                        color: BottomSheet.agreeOptional[4]
                            ? kMainColor
                            : kGray2Color,
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
                  if (BottomSheet.agreeAll) {
                    Navigator.pop(context);
                    SignUpContent3.isAgree = true;
                  }
                },
                style: BottomSheet.agreeAll
                    ? SignUpScreen1.able
                    : SignUpScreen1.disable,
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
      BottomSheet.agreeEssential = !BottomSheet.agreeEssential;
      if (BottomSheet.agreeEssential) {
        BottomSheet.agreeAll = true;
        for (int i = 0; i < BottomSheet.agreeOptional.length; i++) {
          BottomSheet.agreeOptional[i] = true;
        }
      } else if (!BottomSheet.agreeEssential) {
        BottomSheet.agreeAll = false;
        for (int i = 0; i < BottomSheet.agreeOptional.length; i++) {
          BottomSheet.agreeOptional[i] = false;
        }
      }
    });
  }

  void callbackOptional1() {
    setState(() {
      BottomSheet.agreeOptional[0] = !BottomSheet.agreeOptional[0];
      callbackRepetitious();
    });
  }

  void callbackOptional2() {
    setState(() {
      BottomSheet.agreeOptional[1] = !BottomSheet.agreeOptional[1];
      callbackRepetitious();
    });
  }

  void callbackOptional3() {
    setState(() {
      BottomSheet.agreeOptional[2] = !BottomSheet.agreeOptional[2];
      callbackRepetitious();
    });
  }

  void callbackOptional4() {
    setState(() {
      BottomSheet.agreeOptional[3] = !BottomSheet.agreeOptional[3];
      callbackRepetitious();
    });
  }

  void callbackOptional5() {
    setState(() {
      BottomSheet.agreeOptional[4] = !BottomSheet.agreeOptional[4];
      callbackRepetitious();
    });
  }

  void callbackRepetitious() {
    if (BottomSheet.agreeOptional.every((element) => element == true)) {
      BottomSheet.agreeEssential = true;
      BottomSheet.agreeAll = true;
    } else if (BottomSheet.agreeOptional.every((element) => element == false)) {
      BottomSheet.agreeEssential = false;
      BottomSheet.agreeAll = false;
    }
  }
}
