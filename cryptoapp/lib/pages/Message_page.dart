import 'package:badges/badges.dart';
import 'package:cryptoapp/pages/Notification_Page.dart';
import 'package:cryptoapp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:line_icons/line_icons.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
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
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              width: size.width * 0.8,
              height: 40,
              decoration: BoxDecoration(
                color: grey.withOpacity(0.25),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search...",
                  ),
                ),
              ),
            ),
            Flexible(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BellPage()),
                  );
                },
                icon: Badge(
                  badgeColor: primary,
                  badgeContent: const Text(
                    "3",
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                  child: const Icon(
                    LineIcons.bell,
                    size: 25,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
