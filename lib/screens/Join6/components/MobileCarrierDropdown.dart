import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class MobileCarrierDropdown extends StatefulWidget {
  const MobileCarrierDropdown({Key? key}) : super(key: key);

  @override
  _MobileCarrierDropdownState createState() => _MobileCarrierDropdownState();
}

class _MobileCarrierDropdownState extends State<MobileCarrierDropdown> {
  String dropdownValue = '통신사';
  bool isSelected = false;
  dynamic currentColor = kWhiteColor;
  dynamic selectedColor = kGray2Color;
  dynamic unselectedColor = kWhiteColor;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      color: kWhiteColor,
      child: SizedBox(
        height: 50,
        width: SizeConfig.screenWidth,
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: kMainColor, width: 2),
              ),
            ),
            value: dropdownValue,
            icon: const ImageIcon(
              AssetImage('images/icons/dropdown.png'),
              color: kFontColor,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
                if (dropdownValue == '통신사') {
                  isSelected = false;
                  currentColor = unselectedColor;
                } else {
                  isSelected = true;
                  currentColor = selectedColor;
                }
              });
            },
            style: TextStyle(
              fontSize: 15,
              color: kGrayColor,
            ),
            selectedItemBuilder: (BuildContext context) {
              return <String>['통신사', 'SKT', 'KT', 'LG U+'].map((String value) {
                return Text(
                  dropdownValue,
                  style: TextStyle(color: kGrayColor),
                );
              }).toList();
            },
            items: <String>['통신사', 'SKT', 'KT', 'LG U+']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
