import 'dart:async';

import 'package:antilla/screens/Join6/components/AuthCodeInput.dart';
import 'package:antilla/screens/Join6/components/AuthCodeTimer.dart';
import 'package:antilla/screens/Join6/components/MobileCarrierDropdown.dart';
import 'package:antilla/screens/Join6/components/TimerWidget.dart';
import 'package:antilla/screens/join3/components/CancelContainer.dart';
import 'package:antilla/screens/join3/components/MainText.dart';
import 'package:antilla/screens/join3/components/NameInput.dart';
import 'package:antilla/screens/join3/components/OkButton.dart';
import 'package:antilla/screens/join3/components/PrevContainer.dart';
import 'package:antilla/screens/join3/components/SsnInput.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'components/PhoneNumberInput.dart';
import 'components/ResendAuthCodeButton.dart';

class Join6Screen extends StatelessWidget {
  // This widget is the root of your application.
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
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PrevContainer(),
                      CancelContainer(),
                    ],
                  ),
                  SizedBox(height: 38),
                  MainText(),
                  SizedBox(height: 35),
                  NameInput(),
                  SizedBox(height: 32),
                  SsnInput(),
                  SizedBox(height: 35),
                  MobileCarrierDropdown(),
                  SizedBox(height: 35),
                  Row(
                    children: [
                      PhoneNumberInput(),
                      Spacer(),
                      ResendAuthCodeButton(),
                    ],
                  ),
                  SizedBox(height: 35),
                  AuthCodeTimer(),
                ],
              ),
            ),
            Spacer(),
            OkButton(),
          ],
        ),
      ),
    );
  }
}
