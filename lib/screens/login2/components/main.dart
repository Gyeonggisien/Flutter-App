import 'package:flutter/material.dart';
import 'EmailContainer.dart';
import 'PasswordContainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          )
        ],
      )),
    );
  }
}
