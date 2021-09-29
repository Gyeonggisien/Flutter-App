import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/Clause.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SignUpContent4 extends StatefulWidget {
  static bool isButtonEnabled = false;
  static bool agreeAll = false;
  static bool agreeEssential = false;
  static bool agreeOptional1 = false;
  static bool agreeOptional2 = false;

  @override
  _SignUpContent4State createState() => _SignUpContent4State();
}

class _SignUpContent4State extends State<SignUpContent4> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
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
                  text: '서비스 약관 동의',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '를\n진행해주세요'),
            ],
          ),
        ),
        SizedBox(height: getHeight(30.0)),
        MainClause(
          color: SignUpContent4.agreeAll ? kMainColor : kGray2Color,
          text: '전체 동의',
          icon: Icon(
            Icons.keyboard_arrow_down,
            size: getWidth(30.0),
          ),
          callback: callbackAll,
        ),
        SizedBox(height: getHeight(30.0)),
        MainClause(
          color: SignUpContent4.agreeEssential ? kMainColor : kGray2Color,
          text: '서비스 이용 동의(필수)',
          icon: Icon(
            Icons.keyboard_arrow_down,
            size: getWidth(30.0),
          ),
          callback: callbackEssential,
        ),
        SizedBox(height: getHeight(30.0)),
        MainClause(
          color: SignUpContent4.agreeOptional1 ? kMainColor : kGray2Color,
          text: '서비스 이용 동의(선택)',
          icon: Icon(
            Icons.keyboard_arrow_down,
            size: getWidth(30.0),
          ),
          callback: () {
            setState(() {
              SignUpContent4.agreeOptional1 = !SignUpContent4.agreeOptional1;
              checkState();
            });
          },
        ),
        SizedBox(height: getHeight(30.0)),
        MainClause(
          color: SignUpContent4.agreeOptional2 ? kMainColor : kGray2Color,
          text: '마케팅 정보 전송 동의(선택)',
          icon: Icon(
            Icons.keyboard_arrow_down,
            size: getWidth(30.0),
          ),
          callback: () {
            setState(() {
              SignUpContent4.agreeOptional2 = !SignUpContent4.agreeOptional2;
              checkState();
            });
          },
        ),
        SizedBox(height: getHeight(30.0) * 1.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '고객정보취급방침 >',
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: kGray2Color),
            ),
          ],
        )
      ],
    );
  }

  void changeState(bool b1, bool b3, bool b4, bool b5) {
    SignUpContent4.isButtonEnabled = b1;
    SignUpContent4.agreeEssential = b3;
    SignUpContent4.agreeOptional1 = b4;
    SignUpContent4.agreeOptional2 = b5;
  }

  void checkState() {
    if (SignUpContent4.agreeEssential &&
        SignUpContent4.agreeOptional1 &&
        SignUpContent4.agreeOptional2) {
      SignUpContent4.agreeAll = true;
      SignUpContent4.isButtonEnabled = true;
    } else {
      SignUpContent4.agreeAll = false;
      SignUpContent4.isButtonEnabled = false;
    }
  }

  void callbackAll() {
    setState(() {
      SignUpContent4.agreeAll = !SignUpContent4.agreeAll;
      if (SignUpContent4.agreeAll) {
        changeState(true, true, true, true);
        checkState();
      } else if (!SignUpContent4.agreeAll) {
        changeState(false, false, false, false);
        checkState();
      }
    });
  }

  void callbackEssential() {
    setState(() {
      SignUpContent4.agreeEssential = !SignUpContent4.agreeEssential;
      if (SignUpContent4.agreeEssential) {
        checkState();
        SignUpContent4.isButtonEnabled = true;
      } else {
        checkState();
        SignUpContent4.isButtonEnabled = false;
      }
    });
  }
}
