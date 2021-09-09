import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:flutter/material.dart';

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
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 31),
          headline2: TextStyle(fontSize: 21),
          headline3: TextStyle(fontSize: 18),
        ),
      ),
      home: LoginScreen(),
    );
  }
}
