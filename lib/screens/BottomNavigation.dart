import 'package:antilla/constants.dart';
import 'package:antilla/screens/home/HomeScreen.dart';
import 'package:antilla/screens/market/MarketScreen.dart';
import 'package:antilla/screens/my_page/MyPageScreen.dart';
import 'package:antilla/screens/search/SearchScreen.dart';
import 'package:antilla/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNavigation extends StatelessWidget {
  final PersistentTabController? _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [HomeScreen(), SearchScreen(), MarketScreen(), MyPageScreen()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'images/icons/home-fill-icon.png',
        ),
        inactiveIcon: Image.asset('images/icons/home-icon.png'),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset('images/icons/search-fill-icon.png'),
        inactiveIcon: Image.asset('images/icons/search-icon.png'),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset('images/icons/market-fill-icon.png'),
        inactiveIcon: Image.asset('images/icons/market-icon.png'),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset('images/icons/mypage-fill-icon.png'),
        inactiveIcon: Image.asset('images/icons/mypage-icon.png'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        navBarHeight: 60.0,
        bottomScreenMargin: 60.0,
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
            colorBehindNavBar: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  offset: Offset(0.0, -5.0),
                  blurRadius: 10.0,
                  spreadRadius: 5.0)
            ]),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style6, // Choose the nav bar style with this property.
      ),
    );
  }
}
