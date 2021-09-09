import 'package:flutter/material.dart';
import 'package:antilla/constants.dart';

class EmailPasswordContainer extends StatelessWidget {
  const EmailPasswordContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: EmailContainer(),
      ),
      Expanded(
        child: PasswordContainer(),
      ),
    ]);
  }
}

class EmailContainer extends StatelessWidget {
  EmailContainer();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kMainColor, width: 2.0)),
        labelText: '이메일',
      ),
    );
  }
}

class PasswordContainer extends StatelessWidget {
  PasswordContainer();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: kMainColor, width: 2.0)),
          labelText: '패스워드'),
    );
  }
}
