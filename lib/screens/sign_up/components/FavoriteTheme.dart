import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class FavoriteTheme extends StatelessWidget {
  final image;
  final title;
  final position;

  FavoriteTheme({this.title, this.image, this.position});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: getWidth(kDefaultPadding * 5),
        height: getHeight(kDefaultPadding * 7.25),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                  width: getWidth(kDefaultPadding * 4.5),
                  height: getHeight(kDefaultPadding * 4.5),
                ),
              ),
            ),
            Positioned(
              child: SizedBox(height: getHeight(kDefaultPadding * 0.5)),
            ),
            Positioned(
              child: Text(title, style: Theme.of(context).textTheme.headline3),
              bottom: getHeight(kDefaultPadding * 1.25),
              left: getWidth(position),
            ),
          ],
        ),
      ),
    );
  }
}
