import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent3.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'SignUpContent2.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    required this.hintText,
    required this.width,
    required this.callback,
    this.validator,
    this.autofocus,
    this.height,
  });

  final String hintText;
  final double width;
  final double? height;
  final String? Function(String?)? validator;
  final bool? autofocus;
  final void Function(String?)? callback;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.always,
        onChanged: widget.callback,
        controller: this.controller,
        autofocus: ((this.widget.autofocus == null) ||
                (this.widget.autofocus == false))
            ? false
            : true,
        style:
            Theme.of(context).textTheme.headline3!.copyWith(color: kMainColor),
        validator: this.widget.validator,
        decoration: InputDecoration(
          errorStyle: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: kMainColor),
          hintText: widget.hintText,
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
    );
  }
}

class CustomPasswordTextField extends StatefulWidget {
  CustomPasswordTextField({
    this.hintText,
    required this.callback,
  });

  final String? hintText;
  final Function(String?)? callback;

  @override
  _CustomPasswordTextFieldState createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool visibleState = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (text) => widget.callback!(text),
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
  List<String> _currencies = ['통신사', 'SKT', 'KT', 'LG'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isDense: true,
      value: _currencies[0],
      onChanged: (String? newValue) {
        value = newValue!;
        print('===========DROPDOWNVALUE : ${value}===========');
        if (value == '통신사') {
          setState(() {
            SignUpContent3.currencyValid = false;
            SignUpContent3.changeState();
          });
        } else {
          setState(() {
            SignUpContent3.currencyValid = true;
            SignUpContent3.changeState();
          });
        }
      },
      icon: IconButton(
        splashColor: Colors.white.withOpacity(0.0),
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: kGrayColor,
        ),
        onPressed: () {},
      ),
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
      ),
      items: _currencies.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      selectedItemBuilder: (BuildContext context) {
        return _currencies.map((String value) {
          return Text(
            value,
            style: TextStyle(color: kGrayColor),
          );
        }).toList();
      },
    );

    // original code
    /*
    return TextFormField(
      style: Theme.of(context).textTheme.headline3!.copyWith(color: kMainColor),
      readOnly: true,
      onChanged: (String value) {},
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
    */
  }
}
