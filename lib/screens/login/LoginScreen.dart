import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [kPrimaryColor.withOpacity(0.0), kPointColor],
            stops: [0.2, 0.8],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(flex: 2,),
              Image.asset('images/logo.png', scale: 0.8,),
              SizedBox(height: getProportionateScreenHeight(20.0),),
              Text.rich(
                TextSpan(
                  text: '간편하게 로그인하고\n',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
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
              SizedBox(height: getProportionateScreenHeight(80.0),),
              LoginButton(text: '구글로 시작하기', icon: 'images/icons/google-icon.png'),
              SizedBox(height: kDefaultPadding,),
              LoginButton(text: '카카오톡로 시작하기', icon: 'images/icons/kakao-icon.png'),
              SizedBox(height: kDefaultPadding,),
              LoginButton(text: '네이버로 시작하기', icon: 'images/icons/naver-icon.png'),
              SizedBox(height: getProportionateScreenHeight(50.0),),
              TextButton(
                onPressed: () {},
                child: Text(
                  '이메일로 로그인하기',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationThickness: 3
                  ),
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
  const LoginButton({required this.text, required this.icon});

  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shadowColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 1.5),
        side: BorderSide(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, width: 10.0,),
          SizedBox(width: kDefaultPadding / 2,),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
