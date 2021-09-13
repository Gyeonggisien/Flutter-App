/*
import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/Clause.dart';
import 'package:antilla/screens/sign_up/components/ConfirmButton.dart';
import 'package:antilla/screens/sign_up/components/CustomTextField.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SignUpContent3 extends StatelessWidget {
  final double heightPadding = getHeight(30.0);
  final double contentPadding = getWidth(5.0);

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
              TextSpan(text: '를 해주세요'),
            ],
          ),
        ),
        SizedBox(height: heightPadding),
        CustomTextField(
          hintText: '이름 (성 + 이름)',
          width: SizeConfig.screenWidth!,
        ),
        SizedBox(height: heightPadding),
        Row(
          children: [
            CustomTextField(
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
              hintText: '',
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
                  showModalBottomSheet(
                    context: context,
                    builder: buildBottomSheet,
                    constraints: BoxConstraints(
                        maxHeight: SizeConfig.screenHeight! * 0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                  );
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
                  '인증번호 받기',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

Widget buildBottomSheet(BuildContext context) {
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
            ConfirmButton()
          ],
        ),
      ],
    ),
  );
}
*/
