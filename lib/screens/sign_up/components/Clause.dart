import 'package:antilla/constants.dart';
import 'package:antilla/screens/sign_up/components/SignUpContent3.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class MainClause extends StatefulWidget {
  MainClause(
      {required this.text,
      this.icon,
      required this.option,
      this.extraFunction});

  final String text;
  final Icon? icon;
  final int option;
  final Function? extraFunction;
  bool isActivated = false;

  bool getActivated() {
    return this.isActivated;
  }

  void setActivated(bool state) {
    this.isActivated = state;
  }

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
            color: widget.isActivated ? kMainColor : kGray2Color,
            size: getWidth(36.0),
          ),
          onPressed: () {
            setState(() {
              widget.isActivated = !widget.isActivated;
              if (widget.option == 3) {
                // when mainclause widget belongs to Content3:
                widget.extraFunction;
                if (ModalSheet.isAllAgree()) {
                  ModalSheet.mainClause.isActivated = true;
                  ModalSheet.subclauses[0].isActivated = true;
                  ModalSheet.subclauses[1].isActivated = true;
                  ModalSheet.subclauses[2].isActivated = true;
                  ModalSheet.subclauses[3].isActivated = true;
                  ModalSheet.subclauses[4].isActivated = true;
                }
                print('CONTENT 3 WIDGET IS PRESSED');
              } else if (widget.option == 4) {
                widget.extraFunction;
                print('CONTENT 4 WIDGET IS PRESSED');
              }
            });
          },
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
    this.extraFunction,
  });

  final String text;
  bool isActivated = false;
  void Function()? extraFunction;

  @override
  _SubClauseState createState() => _SubClauseState();

  bool getActivated() {
    return this.isActivated;
  }
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
            color: widget.isActivated ? kMainColor : kGray2Color,
            size: getWidth(26.0),
          ),
          onPressed: () {
            print(
                '==========BUTTON IS PRESSED.===============> ${widget.isActivated}');
            setState(() {
              widget.isActivated = !widget.isActivated;
            });
            widget.extraFunction;
          },
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
