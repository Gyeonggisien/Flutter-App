import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class HotTheme extends StatelessWidget {
  HotTheme({required this.image, required this.text, required this.icon});
  final image;
  final text;
  final icon;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      width: getWidth(140.0),
      height: getWidth(150.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              width: getWidth(130.0),
              height: getWidth(130.0),
              child: Image.asset(image, fit: BoxFit.cover,),
            ),
          ),
          Positioned(
            bottom: 0,
            left: getWidth(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: getWidth(20.0),
                  child: Image.asset(icon),
                ),
                SizedBox(width: getWidth(5.0),),
                Text(text, style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.bold),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
