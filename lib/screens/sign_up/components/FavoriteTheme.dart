import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class FavoriteTheme extends StatelessWidget {
  final image;
  final title;

  FavoriteTheme({this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: getWidth(100.0),
        height: getHeight(100.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            Positioned(
              child: Text(title),
              bottom: 0,
              left: getWidth(10.0),
            )
          ],
        ),
      ),
    );
  }
}
