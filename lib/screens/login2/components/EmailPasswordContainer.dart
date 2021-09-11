import 'package:flutter/material.dart';
import 'package:antilla/constants.dart';

class EmailPasswordContainer extends StatelessWidget {
  const EmailPasswordContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      EmailContainer(),
      SizedBox(
        height: 20,
      ),
      PasswordContainer(),
    ]);
  }
}

class EmailContainer extends StatelessWidget {
  EmailContainer();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: kMainColor, width: 1.0)),
          errorStyle: TextStyle(color: kMainColor, fontSize: 15),
          labelStyle: TextStyle(color: kGray2Color, fontSize: 15),
          labelText: '이메일',
        ),
      ),
    );
  }
}

class PasswordContainer extends StatefulWidget {
  const PasswordContainer({Key? key}) : super(key: key);

  @override
  _PasswordContainerState createState() => _PasswordContainerState();
}

class _PasswordContainerState extends State<PasswordContainer> {
  dynamic eyeCross = ImageIcon(
    AssetImage('images/icons/eye-cross.png'),
  );
  dynamic eye = ImageIcon(
    AssetImage('images/icons/eye.png'),
  );
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: kMainColor, width: 1.0)),
          labelStyle: TextStyle(color: kGray2Color, fontSize: 15),
          labelText: '패스워드',
          suffixIcon: IconButton(
            icon: toggle
                ? ImageIcon(
                    AssetImage('images/icons/eye-cross.png'),
                    color: kGrayColor,
                  )
                : ImageIcon(
                    AssetImage('images/icons/eye.png'),
                    color: kGrayColor,
                  ),
            onPressed: () {
              setState(() {
                toggle = !toggle;
              });
            },
          ),
        ),
        obscureText: toggle,
        showCursor: false,
      ),
    );
  }
}
