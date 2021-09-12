import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class OkButton extends StatelessWidget {
  const OkButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      height: 80,
      width: SizeConfig.screenWidth,
      child: TextButton(
        onPressed: null,
        child: Text(
          '확인\n',
          style: TextStyle(
            fontSize: 21,
            color: kWhiteColor,
          ),
        ),
        style: TextButton.styleFrom(
          primary: kMainColor,
          backgroundColor: kMainColor,
          shape: RoundedRectangleBorder(),
        ),
      ),
    );
  }
}
