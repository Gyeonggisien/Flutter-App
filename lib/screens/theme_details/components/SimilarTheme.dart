import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';


class SimilarTheme extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: getWidth(150.0),
              height: getWidth(150.0),
              decoration: BoxDecoration(
                  color: kGray2Color,
                  borderRadius: BorderRadius.circular(10.0)),
            ),
            SizedBox(
              height: getWidth(3.0),
            ),
            Text(
              '블루 미드센츄리 패키지',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: getWidth(3.0),
            ),
            Text(
              '인센스 홀더 / 오브제 / 패브릭 / 선반',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: getWidth(3.0),
            ),
            Row(
              children: [
                Container(
                  width: getWidth(15.0),
                  child: Image.asset('images/icons/star.png'),
                ),
                Text(
                  '4.9',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: getWidth(kDefaultPadding * 0.4),
                ),
                Text('구독 1,380',
                    style: Theme.of(context).textTheme.headline4),
              ],
            ),
          ],
        ),
        SizedBox(width: getWidth(kDefaultPadding * 0.5),),
      ],
    );
  }
}
