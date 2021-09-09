import 'package:antilla/screens/login2/components/EmailPasswordContainer.dart';
import 'package:antilla/screens/login2/components/FindIdPasswordButton.dart';
import 'package:antilla/screens/login2/components/PrevContainer.dart';
import 'package:flutter/material.dart';

import 'components/AntillaContainer.dart';
import 'components/JoinStartButton.dart';

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
              child: PrevContainer(),
            ),
            Expanded(
              child: AntillaContainer(),
            ),
            Expanded(
              child: EmailPasswordContainer(),
            ),
            Row(
              children: [
                Expanded(
                  child: FindIdPasswordButton(),
                ),
              ],
            ),
            Expanded(
              child: JoinStartButton(),
            )
          ],
        ),
      ),
    );
  }
}
