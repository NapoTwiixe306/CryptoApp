import 'package:cryptoapp/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      backgroundColor: appBarColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Profile Page",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 25,
            ),
          ),
        ],
      ),
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
