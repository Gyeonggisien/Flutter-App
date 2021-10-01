import 'package:flutter/material.dart';

import 'FavoriteTheme.dart';

class FavoriteContainer extends StatelessWidget {
  const FavoriteContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          FavoriteTheme(
            title: '모던',
            image: 'images/item_modern.png',
          ),
          FavoriteTheme(
            title: '심플',
            image: 'images/item_simple.png',
          ),
          FavoriteTheme(
            title: '아늑함',
            image: 'images/item_cozy.png',
          ),
        ],
      ),
    );
  }
}
