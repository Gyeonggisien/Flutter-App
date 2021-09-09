import 'package:antilla/screens/login2/components/EmailContainer.dart';
import 'package:antilla/screens/login2/components/FindIdButton.dart';
import 'package:antilla/screens/login2/components/FindPasswordButton.dart';
import 'package:antilla/screens/login2/components/PasswordContainer.dart';
import 'package:flutter/material.dart';

class LoginScreen2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: EmailContainer(),
            ),
            Expanded(
              child: PasswordContainer(),
            ),
            Row(children: [
              Expanded(
                flex: 3,
                child: FindIdButton(),
              ),
              Expanded(
                child: Center(
                  child: Text('|'),
                ),
              ),
              Expanded(
                flex: 3,
                child: FindPasswordButton(),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
