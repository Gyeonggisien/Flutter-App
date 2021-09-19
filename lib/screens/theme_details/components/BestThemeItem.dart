import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';


class BestThemeItem extends StatelessWidget {
  const BestThemeItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.only(right: getWidth(kDefaultPadding * 0.5)),
      child: Stack(
        children: [
          Container(
            width: getWidth(180.0),
            height: getWidth(180.0),
            decoration: BoxDecoration(
                color: kGray2Color,
                borderRadius: BorderRadius.circular(10.0)),
          ),
          Positioned(
            left: getWidth(kDefaultPadding * 0.5),
            top: getWidth(kDefaultPadding * 0.5),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: getWidth(3.0), horizontal: getWidth(13.0)),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Text(
                '✨Best',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kWhiteColor, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
