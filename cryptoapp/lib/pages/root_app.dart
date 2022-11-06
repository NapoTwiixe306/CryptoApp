import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:cryptoapp/pages/Home_page.dart';
import 'package:cryptoapp/pages/Message_page.dart';
import 'package:cryptoapp/pages/card_page.dart';
import 'package:cryptoapp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar(),
        backgroundColor: white,
        body: getBody(),
        bottomNavigationBar: getFooter(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              selectedTab(4);
            },
            backgroundColor: primary,
            child: const Icon(
              AntDesign.creditcard,
              size: 25,
            )
            //params
            ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }

  Widget getBody() {
    List<Widget> pages = [
      const HomePage(),
      const MessagePage(),
      const Center(
        child: Text(
          "Notification Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: primary),
        ),
      ),
      const Center(
        child: Text(
          "profile Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: primary),
        ),
      ),
      const CardPage(),
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  getAppBar() {
    if (pageIndex == 0) {
      return AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              "CryptoExtension",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 25,
              ),
            ),
          ],
        ),
      );
    } else if (pageIndex == 1) {
      return AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              "Message",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 25,
              ),
            ),
          ],
        ),
      );
    } else if (pageIndex == 2) {
      return AppBar(
        elevation: 0,
        backgroundColor: primary,
        title: const Text("Notifications"),
      );
    } else if (pageIndex == 3) {
      return AppBar(
        elevation: 0,
        backgroundColor: primary,
        title: const Text("Profile"),
      );
    } else {
      return null;
    }
  }

  getFooter() {
    List<IconData> iconsItems = [
      MaterialCommunityIcons.view_grid,
      MaterialCommunityIcons.comment,
      MaterialCommunityIcons.bell,
      MaterialCommunityIcons.account_circle,
    ];
    return AnimatedBottomNavigationBar(
      activeColor: primary,
      splashColor: secondary,
      inactiveColor: Colors.black.withOpacity(0.5),
      icons: iconsItems,
      activeIndex: pageIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      iconSize: 25,
      rightCornerRadius: 10,
      onTap: (index) {
        selectedTab(index);
      },
      //other params
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
