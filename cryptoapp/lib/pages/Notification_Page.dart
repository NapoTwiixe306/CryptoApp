import 'package:cryptoapp/pages/root_app.dart';
import 'package:cryptoapp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BellPage extends StatefulWidget {
  const BellPage({super.key});

  @override
  State<BellPage> createState() => _BellPageState();
}

class _BellPageState extends State<BellPage> {
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
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const RootApp()));
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: black,
          size: 22,
        ),
      ),
      title: const Text(
        "CryptoExtension",
        style: TextStyle(fontSize: 25, color: black),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
            color: black,
            size: 25,
          ),
        ),
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
              "Notifications Page",
              style: TextStyle(
                color: primary,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
