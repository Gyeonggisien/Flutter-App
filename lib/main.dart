import 'package:antilla/constants.dart';
import 'package:antilla/screens/BottomNavigation.dart';
import 'package:antilla/screens/Join6/Join6Screen.dart';
import 'package:antilla/screens/login/LoginScreen.dart';
import 'package:antilla/screens/login2/LoginScreen2.dart';
import 'package:antilla/screens/sign_up/SignUpScreen.dart';
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
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        return MediaQuery(
          data: mediaQueryData.copyWith(
              textScaleFactor: MediaQuery.of(context).size.width / 100.0 / 5.0),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'NotoSans',
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 40, color: kFontColor),
          headline2: TextStyle(fontSize: 24, color: kFontColor),
          headline3: TextStyle(fontSize: 20, color: kFontColor),
          headline4: TextStyle(fontSize: 17, color: kFontColor),
          headline5: TextStyle(fontSize: 14, color: kFontColor),
          headline6: TextStyle(fontSize: 11, color: kFontColor),
          bodyText1: TextStyle(fontSize: 7, color: kFontColor),
        ),
      ),
      home: SafeArea(child: SignUpScreen()),
    );
  }
}
