import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kMainColor = Color(0xFFEE5243);
const kBackgroundColor = Color(0xFFF4E6CC);
const kPointColor = Color(0xFFEDAD53);
const kSubColor = Color(0xFF4F2D2C);

const kFontColor = Color(0xFF282828);
const kWhiteColor = Color(0xFFFFFFFF);
const kGrayColor = Color(0xFF727272);
const kGray2Color = Color(0xFFC3C9CF);
const kStandColor = Color(0xFFEC884E);
const kBgrayColor = Color(0xFFE0DDD8);
const kBgray2Color = Color(0xFFC7C3BC);

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
