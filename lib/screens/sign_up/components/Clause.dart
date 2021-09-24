import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class MainClause extends StatefulWidget {
  MainClause(
      {required this.text,
      this.icon,
      required this.color,
      required this.callback});

  final String text;
  final Icon? icon;
  final void Function()? callback;
  dynamic color;

  @override
  _MainClauseState createState() => _MainClauseState();
}

class _MainClauseState extends State<MainClause> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.check_circle,
            color: widget.color,
            size: getWidth(36.0),
          ),
          onPressed: widget.callback,
        ),
        SizedBox(
          width: getWidth(5.0),
        ),
        Text(
          widget.text,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        if (widget.icon != null) widget.icon! else Container(),
      ],
    );
  }
}

class SubClause extends StatefulWidget {
  SubClause({
    required this.text,
    required this.color,
    required this.callback,
  });

  final String text;
  dynamic color;
  final void Function()? callback;

  @override
  _SubClauseState createState() => _SubClauseState();
}

class _SubClauseState extends State<SubClause> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getWidth(5.0),
        ),
        IconButton(
          icon: Icon(
            Icons.check,
            color: widget.color,
            size: getWidth(26.0),
          ),
          onPressed: widget.callback,
        ),
        SizedBox(
          width: getWidth(10.0),
        ),
        Text(
          widget.text,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(fontWeight: FontWeight.bold, color: kGrayColor),
        ),
        Spacer(),
        Icon(Icons.keyboard_arrow_right)
      ],
    );
  }
}
