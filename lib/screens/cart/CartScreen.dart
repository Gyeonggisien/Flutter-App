import 'package:antilla/constants.dart';
import 'package:antilla/screens/cart/components/CartItem.dart';
import 'package:antilla/screens/components/AntillaAppBar.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AntillaAppBar(
          title: "장바구니",
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(getWidth(kDefaultPadding)),
              child: Text(
                '담은 상품(3)',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              thickness: 2,
              color: kGray3Color,
              indent: getWidth(kDefaultPadding),
              endIndent: getWidth(kDefaultPadding),
            ),
            CartItem(
              title: "그리너리 빈티지",
              plan: "BASIC",
              image: "images/item1.png",
            ),
            CartItem(
              title: "미드나잇선",
              plan: "STANDARD",
              image: "images/item2.png",
            ),
            CartItem(
              title: "철제 강화유리 노트북 선반",
              plan: "N차 상품",
              image: "images/board.png",
            ),
            SizedBox(
              height: getWidth(kDefaultPadding * 0.5),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    '가격 82,000원 + 무료배송 + 반납비 3,000원',
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: kGrayColor),
                  ),
                  Text(
                    '반납일 기준 7일 전 반납 신청 시 수거비 환급',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: kButtonColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getWidth(kDefaultPadding * 0.5),
            ),
            Divider(
              thickness: 2,
              color: kGray3Color,
              indent: getWidth(kDefaultPadding),
              endIndent: getWidth(kDefaultPadding),
            ),
            SizedBox(
              height: getWidth(kDefaultPadding * 0.5),
            ),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding)),
              child: Column(
                children: [
                  CartTotal(
                    title: '상품 합계',
                    pay: '82,000원',
                  ),
                  SizedBox(height: getWidth(5.0)),
                  CartTotal(
                    title: '배송비',
                    pay: '무료',
                  ),
                  SizedBox(height: getWidth(5.0)),
                  CartTotal(
                    title: '반납비',
                    pay: '3,000원',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getWidth(kDefaultPadding * 0.5),
            ),
            Divider(
              thickness: 2,
              color: kGray3Color,
              indent: getWidth(kDefaultPadding),
              endIndent: getWidth(kDefaultPadding),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getWidth(kDefaultPadding * 0.5),
                  horizontal: getWidth(kDefaultPadding)),
              child: Row(
                children: [
                  Text(
                    '합계',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: kButtonColor, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '85,000원',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: kButtonColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              width: SizeConfig.screenWidth,
              padding:
                  EdgeInsets.symmetric(horizontal: getWidth(kDefaultPadding)),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: kButtonColor,
                  fixedSize: Size(0, getWidth(45.0))
                ),
                child: Text(
                  '구매하기',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: kWhiteColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: getWidth(kDefaultPadding),),
          ],
        ),
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  CartTotal({required this.title, required this.pay});

  final title;
  final pay;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: kGrayColor),
        ),
        Spacer(),
        Text(
          pay,
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: kGrayColor),
        ),
      ],
    );
  }
}
