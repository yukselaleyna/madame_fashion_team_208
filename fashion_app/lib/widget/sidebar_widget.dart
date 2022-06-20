import 'package:fashion_app/constant.dart';
import 'package:fashion_app/home.dart';
import 'package:fashion_app/main.dart';
import 'package:fashion_app/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../rating_page.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        )),
      );
  Widget buildHeader(BuildContext context) => Container(
        color: Colors.orangeAccent,
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Column(children: const [
          CircleAvatar(
            radius: 52,
            backgroundImage: AssetImage('assets/logo/avatar.png'),
          ),
          SizedBox(height: 12),
          Text(
            'Account Name',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          Text(
            'account@gmail.com',
            style: TextStyle(fontSize: 15, color: Colors.white),
          )
        ]),
      );
  Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(runSpacing: 16, children: [
        ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () =>
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ))),
        ListTile(
          leading: const Icon(Icons.person_outline_rounded),
          title: const Text('Profile Page'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProfilePage(),
            ));
          },
        ),
        const Divider(color: kTextColor),
        ListTile(
          leading: const Icon(Icons.star_border_purple500_rounded),
          title: const Text('Rate Us'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
          },
        )
      ]));
}