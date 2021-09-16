import 'package:flutter/material.dart';
import 'package:antilla/constants.dart';

import '../../../size_config.dart';

class PrevContainer extends StatelessWidget {
  PrevContainer({required this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      alignment: Alignment.topLeft,
      width: SizeConfig.screenWidth! * 0.074,
      //height: SizeConfig.screenHeight! * 0.0275,
      padding: EdgeInsets.zero,
      child: TextButton(
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 0)),
        ),
        child: Text(
          '이전',
          style: TextStyle(
            color: kMainColor,
            fontSize: 16,
          ),
          textAlign: TextAlign.left,
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
