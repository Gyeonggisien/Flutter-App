import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SsnInput extends StatelessWidget {
  const SsnInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      child: Row(
        children: [
          SsnFront(),
          Container(
            width: 20,
            child: Center(
              child: Text(
                '-',
                style: TextStyle(
                    color: kMainColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SsnBack(),
          Container(
            padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
            width: 120,
            child: Text(
              '●●●●●●',
              style:
                  TextStyle(color: kGray2Color, fontSize: 15, letterSpacing: 3),
            ),
          ),
        ],
      ),
    );
  }
}

class SsnFront extends StatelessWidget {
  const SsnFront({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      alignment: Alignment.topLeft,
      height: 50,
      width: (SizeConfig.screenWidth! - kDefaultPadding * 2 - 10) * 0.4,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: kMainColor),
          ),
          alignLabelWithHint: true,
          errorStyle: TextStyle(color: kMainColor, fontSize: 15),
          labelStyle: TextStyle(fontSize: 15, color: kGray2Color),
          labelText: '주민번호 앞자리',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class SsnBack extends StatelessWidget {
  const SsnBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      height: 50,
      width: (SizeConfig.screenWidth! - kDefaultPadding * 2) * 0.12,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: kMainColor, width: 2),
          ),
        ),
      ),
    );
  }
}
