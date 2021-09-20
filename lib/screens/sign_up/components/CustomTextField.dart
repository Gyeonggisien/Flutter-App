import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'SignUpContent2.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.hintText,
    required this.width,
    this.validator,
    this.autofocus,
  });

  final String hintText;
  final double width;
  final String? Function(String?)? validator;
  final bool? autofocus;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      width: width,
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        child: TextFormField(
          autofocus: this.autofocus!,
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: kMainColor),
          validator: this.validator,
          decoration: InputDecoration(
            errorStyle: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: kMainColor),
            hintText: hintText,
            hoverColor: kMainColor,
            contentPadding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.9),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: kMainColor, width: 2.5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: kMainColor, width: 2.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: kMainColor, width: 2.5),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomPasswordTextField extends StatefulWidget {
  CustomPasswordTextField({
    this.hintText,
  });

  final String? hintText;

  @override
  _CustomPasswordTextFieldState createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool visibleState = false;
  String? enableState;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (text) {
        RegExp regex = RegExp('[a-zA-Z0-9]');
        bool cond1 = regex.hasMatch(text);
        bool cond2 = text.trim().length >= 8;
        if (cond1 == true && cond2 == true) {
          SignUpContent2.changeState(true, true);
          return null;
        } else if (cond1 == true && cond2 == false) {
          SignUpContent2.changeState(true, false);
          return null;
        } else if (cond1 == false && cond2 == true) {
          SignUpContent2.changeState(false, true);
          return null;
        } else {
          SignUpContent2.changeState(false, false);
          return null;
        }
      },
      autovalidateMode: AutovalidateMode.always,
      //validator: passwordValidation(myController.text),
      style: Theme.of(context).textTheme.headline3!.copyWith(color: kMainColor),
      obscureText: visibleState,
      decoration: InputDecoration(
        hintText: this.widget.hintText,
        hoverColor: kMainColor,
        contentPadding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.9),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: kMainColor, width: 2.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: kMainColor, width: 2.5),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              visibleState = !visibleState;
            });
          },
          icon: visibleState
              ? Icon(
                  Icons.visibility,
                  color: kGrayColor,
                )
              : Icon(
                  Icons.visibility_off,
                  color: kGrayColor,
                ),
          splashColor: Colors.white.withOpacity(0.0),
        ),
      ),
    );
  }
}

class CustomDropdownTextField extends StatefulWidget {
  CustomDropdownTextField({required this.hintText});

  final String hintText;

  @override
  State<CustomDropdownTextField> createState() =>
      _CustomDropdownTextFieldState();
}

class _CustomDropdownTextFieldState extends State<CustomDropdownTextField> {
  String value = '';
  List<String> _currencies = ['SKT', 'KT', 'LG'];

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.headline3!.copyWith(color: kMainColor),
      readOnly: true,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hoverColor: kMainColor,
        contentPadding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.9),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: kMainColor, width: 2.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: kMainColor, width: 2.5),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: kGrayColor,
          ),
          splashColor: Colors.white.withOpacity(0.0),
          onPressed: () {},
        ),
      ),
    );
  }
}
