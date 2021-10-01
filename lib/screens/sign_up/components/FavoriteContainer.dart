import 'package:antilla/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'FavoriteTheme.dart';

class FavoriteContainer extends StatelessWidget {
  final dynamic item = Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      FavoriteTheme(
        title: '모던',
        defaultImage: 'images/item_modern.png',
        selectedImage: 'images/item_modern_selected.png',
        position: kDefaultPadding * 1.75,
      ),
      SizedBox(
        width: getWidth(kDefaultPadding * 0.5),
      ),
      FavoriteTheme(
          title: '심플',
          defaultImage: 'images/item_simple.png',
          selectedImage: 'images/item_simple_selected.png',
          position: kDefaultPadding * 1.75),
      SizedBox(
        width: getWidth(kDefaultPadding * 0.5),
      ),
      FavoriteTheme(
        title: '아늑함',
        defaultImage: 'images/item_cozy.png',
        selectedImage: 'images/item_cozy_selected.png',
        position: kDefaultPadding * 1.4,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
            child: Column(
              children: [
                item,
                item,
                item,
                item,
                item,
                item,
                SizedBox(height: getHeight(kDefaultPadding * 3)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
