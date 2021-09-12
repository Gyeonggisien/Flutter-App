import 'package:flutter/material.dart';
import 'package:antilla/constants.dart';

class CancelContainer extends StatelessWidget {
  const CancelContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '취소',
        style: TextStyle(
          fontSize: 16,
          color: kMainColor,
        ),
      ),
    );
  }
}
