import 'package:flutter/material.dart';

class PasswordContainer extends StatelessWidget {
  PasswordContainer();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );
  }
}
