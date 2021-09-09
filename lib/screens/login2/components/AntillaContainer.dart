import 'package:flutter/material.dart';

class AntillaContainer extends StatelessWidget {
  const AntillaContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'images/logo.png',
      ),
    );
  }
}
