import 'package:flutter/material.dart';
import 'package:antilla/size_config.dart';

class AntillaContainer extends StatelessWidget {
  const AntillaContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'images/logo.png',
        //scale: 2,
      ),
    );
  }
}
