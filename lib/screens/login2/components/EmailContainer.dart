import 'package:flutter/material.dart';

class EmailContainer extends StatelessWidget {
  EmailContainer();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Email',
      ),
    );
  }
}
