import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ValidationWidget extends StatefulWidget {
  final String text;
  final dynamic color;

  ValidationWidget({
    required this.text,
    required this.color,
  });

  @override
  _ValidationWidgetState createState() => _ValidationWidgetState();
}

class _ValidationWidgetState extends State<ValidationWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getWidth(6.0),
        ),
        Icon(
          Icons.check_circle_outline,
          size: getWidth(18.0),
          color: widget.color,
        ),
        SizedBox(
          width: getWidth(5.0),
        ),
        Text(
          widget.text,
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color: widget.color,
              ),
        ),
      ],
    );
  }
}
