import 'package:flutter/material.dart';
import 'package:antilla/constants.dart';

class PrevContainer extends StatelessWidget {
  const PrevContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '이전',
        style: TextStyle(
          fontSize: 16,
          color: kMainColor,
        ),
      ),
    );
  }
}
