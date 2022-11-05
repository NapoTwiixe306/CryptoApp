import 'package:cryptoapp/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getFooter() {
    List bottomItems = [
      "assets/images/home_active_icon.svg",
      "assets/images/search_active_icon.svg",
      "assets/images/upload_active_icon.svg",
      "assets/images/upload_active_icon.svg",
      "assets/images/account_active_icon.svg",
    ];
    return Container(
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(
        color: appFooterColor,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return SvgPicture.asset(
              bottomItems[index],
              width: 27,
            );
          }),
        ),
      ),
    );
  }
}
