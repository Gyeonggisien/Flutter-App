import 'package:flutter/material.dart';
import 'package:antilla/constants.dart';

class PasswordContainer extends StatelessWidget {
  PasswordContainer();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: MainColor, width: 4.0)),
          labelText: '패스워드'),
    );
  }
}
