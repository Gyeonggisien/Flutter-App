import 'package:antilla/screens/login2/components/EmailPasswordContainer.dart';
import 'package:antilla/screens/login2/components/FindIdPasswordButton.dart';
import 'package:antilla/screens/login2/components/PrevContainer.dart';
import 'package:antilla/screens/sign_up/SignUpScreen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/AntillaContainer.dart';
import 'components/JoinButton.dart';
import 'components/StartButton.dart';

class LoginScreen2 extends StatefulWidget {
  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 25),
                PrevContainer(),
                SizedBox(height: 40),
                AntillaContainer(),
                SizedBox(height: 40),
                EmailPasswordContainer(),
                SizedBox(height: 20),
                FindIdPasswordButton(),
                SizedBox(height: 80),
                Column(
                  children: [
                    JoinButton(
                      onPressed: () {
                        setState(() {
                          SignUpScreen.currentIndex = 0;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    StartButton(
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
