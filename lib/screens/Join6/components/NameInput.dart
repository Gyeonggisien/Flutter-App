import 'package:flutter/material.dart';

import '../../../constants.dart';

class NameInput extends StatelessWidget {
  const NameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 2, color: kMainColor),
            ),
            errorStyle: TextStyle(color: kMainColor, fontSize: 15),
            labelStyle: TextStyle(color: kGray2Color, fontSize: 15),
            labelText: '이름 (성 + 이름)'),
      ),
    );
  }
}
