import 'package:antilla/screens/login2/components/EmailPasswordContainer.dart';
import 'package:antilla/screens/login2/components/FindIdPasswordButton.dart';
import 'package:antilla/screens/login2/components/PrevContainer.dart';
import 'package:antilla/screens/sign_up/SignUpScreen.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent1.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
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
    SizeConfig.init(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                    height: SizeConfig.screenHeight! * 0.05), // 0.3125 * height
                PrevContainer(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.05),
                AntillaContainer(),
                SizedBox(height: SizeConfig.screenHeight! * 0.05),
                EmailPasswordContainer(),
                SizedBox(height: SizeConfig.screenHeight! * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FindIdButton(),
                    SizedBox(
                      child: Text('|', textAlign: TextAlign.center),
                    ),
                    FindPasswordButton(),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.1),
                Column(
                  children: [
                    JoinButton(
                      onPressed: () {
                        setState(() {
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
                      height: SizeConfig.screenHeight! * 0.025,
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
