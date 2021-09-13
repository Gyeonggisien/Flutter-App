import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.all(getWidth(kDefaultPadding)),
      child: TextFormField(
        style: Theme.of(context)
            .textTheme
            .headline3!
            .copyWith(color: Colors.white),
        cursorColor: Color(0xFFF3F3F3),
        decoration: InputDecoration(
          fillColor: Color(0xFFF3F3F3),
          filled: true,
          hintText: '검색어를 입력해주세요',
          contentPadding: EdgeInsets.symmetric(
              horizontal: getWidth(kDefaultPadding)),
          hintStyle: Theme.of(context).textTheme.headline3!.copyWith(
            color: Color(0xFFCECECE),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0),
              borderSide: BorderSide.none),
          suffixIcon: Icon(
            Icons.search_sharp,
            color: Color(0xFFCECECE),
            size: getWidth(25.0),
          ),
        ),
      ),
    );
  }
}