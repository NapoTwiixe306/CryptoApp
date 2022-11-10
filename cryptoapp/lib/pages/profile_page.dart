import 'package:cryptoapp/theme/colors.dart';
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
          onPressed: () {},
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
    return SingleChildScrollView(
      child: Column(
        children: const [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Test",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
