import 'package:antilla/constants.dart';
import 'package:antilla/screens/search/components/NewIssue.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class NewIssueContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getHeight(kDefaultPadding * 0.5),
        horizontal: getWidth(kDefaultPadding),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '지금 뜨고 있는 기획전',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: getHeight(kDefaultPadding),
          ),
          NewIssue(
            text: '인테리어가 나의 성격을\n반영한다?',
            image: 'images/new-issue-item1.png',
            userName: '경동나비엔',
          ),
          NewIssue(
            text: '야경 사이에 감춰져\n보지 못했던 것들',
            image: 'images/new-issue-item2.png',
            userName: '김가네김밥',
          ),
          NewIssue(
            text: '오늘 같이 힘든날\n하늘을 보는건 어때요?',
            image: 'images/new-issue-item3.png',
            userName: '돼지는 하늘을 못본다',
          ),
        ],
      ),
    );
  }
}
