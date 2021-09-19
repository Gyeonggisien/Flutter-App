import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent2.dart';
import 'package:flutter/material.dart';

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
  CustomPasswordTextField({required this.hintText});

  final String hintText;

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool visibleState = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: passwordValidation(String? value),
      style: Theme.of(context).textTheme.headline3!.copyWith(color: kMainColor),
      obscureText: visibleState,
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

  static String? Function(String?)? passwordValidation (String? value){
    RegExp regex1 = RegExp(r'^(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    RegExp regex2 = RegExp(r'^8,$');
    if (regex1.hasMatch(value!) && regex2.hasMatch(value!)) {
      SignUpContent2.cond1 = true;
      SignUpContent2.cond2 = true;
      return null;
    } else if(regex1.hasMatch(value!) && !(regex2.hasMatch(value!))) {
      SignUpContent2.cond1 = true;
      SignUpContent2.cond2 = false;
      return null;
    } else if(!regex1.hasMatch(value!) && (regex2.hasMatch(value!))) {
      SignUpContent2.cond1 = false;
      SignUpContent2.cond2 = true;
      return null;
    } else {
      SignUpContent2.cond1 = false;
      SignUpContent2.cond2 = false;
      return null;
    }
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
