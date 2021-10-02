import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  CartItem({required this.title, required this.plan, required this.image});
  final title;
  final plan;
  final image;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  final List<String> _valueList = [
    '1개월',
    '2개월',
    '3개월',
    '4개월',
    '5개월',
    '6개월',
    '7개월',
    '8개월',
    '9개월',
    '10개월',
    '11개월',
    '12개월'
  ];

  String _selectedValue = '1개월';
  late final Color color;

  @override
  void initState() {
    pickColor(widget.plan);
    super.initState();
  }

  void pickColor(String plan) {
    if(plan == "BASIC") {
      color = kBasicColor;
    } else if(plan == "STANDARD") {
      color = kStandColor;
    } else if(plan == "PREMIUM") {
      color = kButtonColor;
    } else {
      color = kFontColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Column(
      children: [
        Container(
          width: SizeConfig.screenWidth,
          height: getHeight(120.0),
          padding: EdgeInsets.symmetric(
              vertical: getHeight(kDefaultPadding),
              horizontal: getWidth(kDefaultPadding)),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width: SizeConfig.screenWidth! * 0.3,
                        height: getWidth(80.0),
                        child: Image.asset(
                          widget.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: getWidth(6.0),
                    top: getWidth(6.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: getWidth(5.0),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: kWhiteColor,
                        border: Border.all(
                          color: kGray3Color,
                        ),
                      ),
                      child: Text(
                        widget.plan,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: color),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: getWidth(20.0),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(widget.title,
                            style: Theme.of(context).textTheme.headline3),
                        Spacer(),
                        Text(
                          'x',
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(
                              color: kButtonColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Container(
                          height: getWidth(25.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: getWidth(kDefaultPadding * 0.5)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: kGray3Color)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: _selectedValue,
                              items: _valueList.map((value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value.toString();
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: getWidth(kDefaultPadding),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              right: getWidth(kDefaultPadding * 0.5)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: kGray2Color,
                            ),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: kGrayColor,
                          ),
                        ),
                        Text(
                          '1',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: getWidth(kDefaultPadding * 0.5)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: kGray2Color,
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: kGrayColor,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      '14,900원',
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 2,
          color: kGray3Color,
          indent: getWidth(kDefaultPadding),
          endIndent: getWidth(kDefaultPadding),
        ),
      ],
    );
  }
}
