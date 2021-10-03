import 'package:antilla/constants.dart';
import 'package:antilla/screens/login2/LoginScreen2.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(
                flex: 2,
              ),
              Image.asset('images/logo.png', height: getHeight(100.0)),
              SizedBox(
                height: getHeight(50.0),
              ),
              Text.rich(
                TextSpan(
                  text: '간편하게 로그인하고\n',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.white,
                      ),
                  children: <TextSpan>[
                    TextSpan(
                        text: '다양한 인테리어를 구독',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: '해보세요'),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getHeight(80.0),
              ),
              LoginButton(
                text: '구글 이메일로 시작하기',
                icon: 'images/icons/google-icon.png',
                backgroundColor: Colors.white,
                fontColor: Colors.black,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              LoginButton(
                text: '카카오톡으로 시작하기',
                icon: 'images/icons/kakao-icon.png',
                backgroundColor: kKakaoColor,
                fontColor: Colors.black,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              LoginButton(
                text: '네이버 아이디로 시작하기',
                icon: 'images/icons/naver-icon.png',
                backgroundColor: kNaverColor,
                fontColor: Colors.white,
              ),
              SizedBox(
                height: getHeight(50.0),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen2()),
                  );
                },
                child: Text(
                  '이메일로 로그인하기',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationThickness: 3),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton(
      {required this.text,
      required this.icon,
      required this.backgroundColor,
      required this.fontColor});

  final String text;
  final String icon;
  final Color backgroundColor;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: getWidth(35.0)),
          Image.asset(
            icon,
            width: getWidth(15.0),
          ),
          SizedBox(width: getWidth(35.0)),
          Text(text,
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: fontColor)),
        ],
      ),
    );
  }
}
