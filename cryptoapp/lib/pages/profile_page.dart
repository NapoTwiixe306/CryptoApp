import 'dart:ui';

import 'package:cryptoapp/pages/models/content.dart';
import 'package:cryptoapp/pages/models/langue.dart';
import 'package:cryptoapp/pages/models/pass.dart';
import 'package:cryptoapp/pages/models/privacy.dart';
import 'package:cryptoapp/pages/models/social.dart';
import 'package:cryptoapp/pages/root_app.dart';
import 'package:cryptoapp/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool valNotify1 = true;
  bool valNotify2 = true;
  bool valNotify3 = true;

  onChangeFunction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      valNotify3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: primary,
      leading: IconButton(
        onPressed: () {},
        icon: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://scontent-bru2-1.xx.fbcdn.net/v/t1.15752-9/259971425_409829030844522_5949259463600386762_n.jpg?stp=dst-jpg_p403x403&_nc_cat=103&ccb=1-7&_nc_sid=aee45a&_nc_ohc=QVpzWmCDIK8AX91zFxA&_nc_ht=scontent-bru2-1.xx&oh=03_AdRCuRmxgwJVrnMMXW5PjVNnpSmRFRv5PglOFJ73WOTNWw&oe=63920F49"),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "CryptoExtension",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("title"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "Test1",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      const Divider(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "Test2",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 25,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Close"),
                    ),
                  ],
                );
              },
            );
          },
          icon: const Icon(
            Icons.more_vert,
            color: black,
            size: 25,
          ),
        )
      ],
    );
  }

  Widget getBody() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: const [
              Icon(
                Icons.person,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Divider(
            height: 20,
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          const PassPage(),
          const ContentPage(),
          const SocialPage(),
          const LanguePage(),
          const PrivacyPage(),
          const SizedBox(height: 40),
          Row(
            children: const [
              Icon(
                Icons.volume_up_outlined,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Notifications",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          buildNotificationOption("Theme Dark", valNotify1, onChangeFunction1),
          buildNotificationOption("Account", valNotify2, onChangeFunction2),
          buildNotificationOption("Opportunity", valNotify3, onChangeFunction3),
          const SizedBox(height: 50),
          Center(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const RootApp()));
              },
              child: const Text(
                "Home",
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 2.2,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.blue,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          ),
        ],
      ),
    );
  }
}
