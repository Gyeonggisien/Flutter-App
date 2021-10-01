import 'package:antilla/constants.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/material.dart';

class FavoriteTheme extends StatefulWidget {
  bool isSelected;
  final defaultImage;
  final selectedImage;
  final title;
  final position;

  FavoriteTheme(
      {this.title,
      this.defaultImage,
      this.selectedImage,
      this.position,
      this.isSelected = false});

  @override
  _FavoriteThemeState createState() => _FavoriteThemeState();
}

class _FavoriteThemeState extends State<FavoriteTheme> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
      },
      child: Container(
        width: getWidth(kDefaultPadding * 5),
        height: getHeight(kDefaultPadding * 7.25),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                child: widget.isSelected
                    ? Image.asset(
                        widget.selectedImage,
                        fit: BoxFit.contain,
                        width: getWidth(kDefaultPadding * 4.5),
                        height: getHeight(kDefaultPadding * 4.5),
                      )
                    : Image.asset(
                        widget.defaultImage,
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
              child: Text(widget.title,
                  style: Theme.of(context).textTheme.headline3),
              bottom: getHeight(kDefaultPadding * 1.25),
              left: getWidth(widget.position),
            ),
          ],
        ),
      ),
    );
  }
}
