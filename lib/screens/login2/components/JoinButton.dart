import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class JoinButton extends StatelessWidget {
  JoinButton({required this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SizedBox(
      height: SizeConfig.screenHeight! * 0.05,
      width: SizeConfig.screenWidth! * 0.61,
      child: TextButton(
        child: Text(
          '신규 가입하기',
          style: TextStyle(
            color: kSubColor,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        style: TextButton.styleFrom(
          primary: kWhiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: kMainColor,
              width: 1,
            ),
          ),
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
