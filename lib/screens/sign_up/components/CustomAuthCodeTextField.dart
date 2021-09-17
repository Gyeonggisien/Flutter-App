import 'package:flutter/material.dart';
import '../../../constants.dart';

class CustomAuthCodeTextField extends StatelessWidget {
  CustomAuthCodeTextField({
    required this.hintText,
    required this.width,
  });

  final String hintText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        style:
            Theme.of(context).textTheme.headline3!.copyWith(color: kMainColor),
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: hintText,
          hoverColor: kMainColor,
          contentPadding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.9),
        ),
      ),
    );
  }
}
