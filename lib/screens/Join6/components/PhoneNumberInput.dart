import 'package:flutter/material.dart';
import '../../../constants.dart';

class PhoneNumberInput extends StatefulWidget {
  const PhoneNumberInput({Key? key}) : super(key: key);

  @override
  _PhoneNumberInputState createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: TextField(
        style: TextStyle(color: kFontColor, fontSize: 15),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: kMainColor, width: 2),
          ),
          labelText: '전화번호',
          labelStyle: TextStyle(color: kGrayColor, fontSize: 15),
        ),
      ),
    );
  }
}
