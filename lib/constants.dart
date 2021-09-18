import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kMainColor = Color(0xFF3E88EB);
const kPointColor = Color(0xFFEDAD53);
const kSubColor = Color(0xFF4F2D2C);
const kButtonColor = Color(0xFF006BB9);

const kFontColor = Color(0xFF313131);
const kWhiteColor = Color(0xFFFFFFFF);
const kGrayColor = Color(0xFF727272);
const kGray2Color = Color(0xFFC3C9CF);
const kBasicColor = Color(0xFF39AB87);
const kStandColor = Color(0xFF30A0E0);
const kPremiumColor = Color(0xFF3F4F68);
const kStarColor = Color(0xFFFFC973);
const kSearchColor = Color(0xFFD1D8DE);

const kNaverColor = Color(0xFF00BF18);
const kKakaoColor = Color(0xFFFDE404);

const kDefaultPadding = 20.0;

BoxDecoration kCardBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: kGray2Color.withOpacity(0.7),
      blurRadius: 10.0,
    )
  ],
);
