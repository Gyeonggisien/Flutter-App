import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/Clause.dart';
import 'package:antilla/screens/sign_up/components/ConfirmButton.dart';
import 'package:antilla/screens/sign_up/components/CustomTextField.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SignUpContent4 extends StatelessWidget {

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
                  text: '서비스 약관 동의', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '를\n진행해주세요'),
            ],
          ),
        ),
        SizedBox(height: getHeight(30.0)),
        MainClause(text: '전체 동의', icon: Icon(Icons.keyboard_arrow_down, size: getWidth(30.0),),),
        SizedBox(height: getHeight(30.0)),
        MainClause(text: '서비스 이용 동의(필수)', icon: Icon(Icons.keyboard_arrow_down, size: getWidth(30.0),),),
        SizedBox(height: getHeight(30.0)),
        MainClause(text: '서비스 이용 동의(선택)', icon: Icon(Icons.keyboard_arrow_down, size: getWidth(30.0),),),
        SizedBox(height: getHeight(30.0)),
        MainClause(text: '마케팅 정보 전송 동의(선택)', icon: Icon(Icons.keyboard_arrow_down, size: getWidth(30.0),),),
        SizedBox(height: getHeight(30.0) * 1.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('고객정보취급방침 >', style: Theme.of(context).textTheme.headline3!.copyWith(color: kGray2Color),),
          ],
        )
      ],
    );
  }
}
