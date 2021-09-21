import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/Clause.dart';
import 'package:antilla/screens/sign_up/components/ConfirmButton.dart';
import 'package:antilla/screens/sign_up/components/CustomTextField.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

import 'CustomAuthCodeTextField.dart';
import 'TimerWidget.dart';

class SignUpContent3 extends StatefulWidget {
  static bool isAgree = false;
  static bool isButtonEnabled = false;
  static bool nameValid = false;
  static bool ssnValid = false;
  static bool currencyValid = false;
  static bool phoneNumValid = false;
  static bool authCodeValid = false;

  static void changeState() {
    SignUpContent3.isButtonEnabled = (SignUpContent3.nameValid &&
        SignUpContent3.ssnValid &&
        SignUpContent3.currencyValid &&
        SignUpContent3.phoneNumValid &&
        SignUpContent3.authCodeValid);
  }

  @override
  _SignUpContent3State createState() => _SignUpContent3State();
}

class _SignUpContent3State extends State<SignUpContent3> {
  final double heightPadding = getHeight(30.0);
  final double contentPadding = getWidth(5.0);
  TimerWidget timer = TimerWidget();

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
          onChanged: (String? value) {
            if (value!.trim().length > 0) {
              setState(() {
                SignUpContent3.nameValid = true;
                SignUpContent3.changeState();
              });
            } else {
              setState(() {
                SignUpContent3.nameValid = false;
                SignUpContent3.changeState();
              });
            }
          },
        ),
        SizedBox(height: heightPadding),
        Row(
          children: [
            CustomTextField(
              onChanged: (String? value) {
                RegExp regex = RegExp('[0-9]');
                bool cond1 = value!.trim().length == 6;
                if (regex.hasMatch(value) && cond1) {
                  setState(() {
                    SignUpContent3.ssnValid = true;
                    SignUpContent3.changeState();
                  });
                } else {
                  setState(() {
                    SignUpContent3.ssnValid = false;
                    SignUpContent3.changeState();
                  });
                }
              },
              hintText: '주민번호 앞자리',
              width: SizeConfig.screenWidth! * 0.35,
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
              onChanged: (String? value) {
                if (value == '1' ||
                    value == '2' ||
                    value == '3' ||
                    value == '4') {
                  setState(() {
                    SignUpContent3.ssnValid = true;
                    SignUpContent3.changeState();
                  });
                } else {
                  setState(() {
                    SignUpContent3.ssnValid = false;
                    SignUpContent3.changeState();
                  });
                }
              },
              hintText: ' ',
              width: getWidth(40.0),
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
                onChanged: (String? value) {
                  RegExp regex = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$');
                  if (regex.hasMatch(value!)) {
                    setState(() {
                      SignUpContent3.phoneNumValid = true;
                      SignUpContent3.changeState();
                    });
                  } else {
                    setState(() {
                      SignUpContent3.phoneNumValid = false;
                      SignUpContent3.changeState();
                    });
                  }
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
                  if (SignUpContent3.isAgree == false) {
                    showModalBottomSheet(
                      context: context,
                      builder: buildBottomSheet,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: kMainColor,
                  padding:
                      EdgeInsets.symmetric(vertical: kDefaultPadding * 0.9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  (timer.isRetried == true && SignUpContent3.isAgree)
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
                      setState(() {
                        SignUpContent3.authCodeValid = true;
                        SignUpContent3.changeState();
                      });
                    } else {
                      setState(() {
                        SignUpContent3.authCodeValid = false;
                        SignUpContent3.changeState();
                      });
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
}

Widget buildBottomSheet(BuildContext context) {
  SignUpContent3 content3 = SignUpContent3();
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
                      text: '본인 인증 이용 동의(필수)',
                    ),
                    SubClause(
                      text: '휴대폰 본인확인 이용 약관',
                    ),
                    SubClause(
                      text: '통신사 본인확인 이용약관',
                    ),
                    SubClause(
                      text: '고유식별정보 처리동의',
                    ),
                    SubClause(
                      text: '개인정보 수집/이용/취급위탁 동의',
                    ),
                    SubClause(
                      text: '개인정보 제 3자 제공 동의',
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
                Navigator.pop(context);
                SignUpContent3.isAgree = true;
              },
            )
          ],
        ),
      ],
    ),
  );
}
