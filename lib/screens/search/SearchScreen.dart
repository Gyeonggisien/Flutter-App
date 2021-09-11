import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(getWidth(kDefaultPadding)),
              child: TextFormField(
                style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: Colors.white
                ),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  fillColor: kBgray2Color,
                  filled: true,
                  hintText: '검색어를 입력해주세요',
                  contentPadding: EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding)),
                  hintStyle: Theme.of(context).textTheme.headline3!.copyWith(
                      color: Colors.white.withOpacity(0.7),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide.none
                  ),
                  suffixIcon: Icon(Icons.search_sharp, color: Colors.white, size: getWidth(25.0),),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '최근 검색어',
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        '전체 삭제',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: kMainColor
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getHeight(kDefaultPadding),),
                  Wrap(
                    spacing: getWidth(kDefaultPadding * 0.7),
                    runSpacing: getHeight(kDefaultPadding * 0.7),
                    children: [
                      RecentSearch(text: '모던'),
                      RecentSearch(text: '미드센츄리'),
                      RecentSearch(text: '무비포스터'),
                      RecentSearch(text: '심플한 테마'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecentSearch extends StatelessWidget {
  RecentSearch({required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding * 0.7), vertical: getHeight(kDefaultPadding * 0.5)),
      decoration: BoxDecoration(
        color: Color(0xFFFBFBFB),
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(color: Color(0xFFE3E3E3))
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text, style: Theme.of(context).textTheme.headline4!.copyWith(
            color: kGrayColor
          )),
          SizedBox(width: getWidth(kDefaultPadding * 0.5),),
          Text('X')
        ],
      ),
    );
  }
}
