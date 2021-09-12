import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class MobileCarrierDropdown extends StatefulWidget {
  const MobileCarrierDropdown({Key? key}) : super(key: key);

  @override
  _MobileCarrierDropdownState createState() => _MobileCarrierDropdownState();
}

class _MobileCarrierDropdownState extends State<MobileCarrierDropdown> {
  List<String> options = const <String>['통신사', 'SKT', 'KT', 'LG U+'];
  String dropdownValue = '통신사';

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      color: kGray2Color,
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
            icon: ImageIcon(
              AssetImage('images/icons/dropdown.png'),
              color: kFontColor,
            ),
            onChanged: (newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            style: TextStyle(
              fontSize: 15,
              color: kGrayColor,
            ),
            selectedItemBuilder: (BuildContext context) {
              return options.map((String value) {
                return Text(
                  dropdownValue,
                  style: TextStyle(color: kGray2Color),
                );
              }).toList();
            },
            items: options.map<DropdownMenuItem<String>>((String value) {
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
