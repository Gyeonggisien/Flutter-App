import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class OnlyItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Padding(
      padding: EdgeInsets.only(right: getWidth(kDefaultPadding * 0.25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: SizeConfig.screenWidth! - getWidth(kDefaultPadding * 2),
            child: Image.asset('images/only-item1.png'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(6.0), vertical: getHeight(kDefaultPadding * 0.5)),
            child: Text.rich(
              TextSpan(
                text: '[루이스 폴센 X 안틸라]',
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kMainColor),
                children: <TextSpan>[
                  TextSpan(
                    text: ' 09.01 ~ 09.31\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '세 달 간 루이스 폴센의 조명을 사용해보세요',
                    style:
                    TextStyle(color: kFontColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
