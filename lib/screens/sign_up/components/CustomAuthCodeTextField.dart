import 'package:flutter/material.dart';
import '../../../constants.dart';

class CustomAuthCodeTextField extends StatelessWidget {
  CustomAuthCodeTextField({
    required this.hintText,
    required this.width,
    this.onChanged,
  });

  final String hintText;
  final double width;
  final String? Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        style:
            Theme.of(context).textTheme.headline3!.copyWith(color: kMainColor),
        onChanged: this.onChanged,
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
