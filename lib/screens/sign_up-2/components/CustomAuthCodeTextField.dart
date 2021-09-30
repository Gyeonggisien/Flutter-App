import 'package:flutter/material.dart';
import '../../../constants.dart';

class CustomAuthCodeTextField extends StatefulWidget {
  CustomAuthCodeTextField({
    required this.hintText,
    required this.width,
    this.validator,
    this.onChanged,
  });

  final String hintText;
  final double width;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;

  @override
  _CustomAuthCodeTextFieldState createState() =>
      _CustomAuthCodeTextFieldState();
}

class _CustomAuthCodeTextFieldState extends State<CustomAuthCodeTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: TextFormField(
        style:
            Theme.of(context).textTheme.headline3!.copyWith(color: kMainColor),
        onChanged: this.widget.onChanged,
        validator: this.widget.validator,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: widget.hintText,
          hoverColor: kMainColor,
          contentPadding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.9),
        ),
      ),
    );
  }
}
