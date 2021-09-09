import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

class EmailContainer extends StatelessWidget {
  EmailContainer();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kMainColor, width: 4.0)),
        labelText: '이메일',
      ),
    );
  }
}
