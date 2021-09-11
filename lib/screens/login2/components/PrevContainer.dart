import 'package:flutter/material.dart';
import 'package:antilla/constants.dart';

class PrevContainer extends StatelessWidget {
  const PrevContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
        ),
        child: Text(
          '이전',
          style: TextStyle(
            color: kMainColor,
            fontSize: 16,
          ),
          textAlign: TextAlign.left,
        ),
        onPressed: null,
      ),
      alignment: Alignment(-1.1, 0),
    );
  }
}
