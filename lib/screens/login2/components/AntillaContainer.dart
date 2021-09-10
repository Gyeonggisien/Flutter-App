import 'package:flutter/material.dart';
import 'package:antilla/size_config.dart';

class AntillaContainer extends StatelessWidget {
  const AntillaContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(80.0),
      child: Image.asset(
        'images/logo.png',
      ),
    );
  }
}
