// ignore_for_file: prefer_const_constructors

import 'package:cupertino_ios_ui_style/profileScreen.dart';
import 'package:cupertino_ios_ui_style/videoScreen.dart';
import 'package:flutter/cupertino.dart';

import 'readScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoTabBarExample(),
    );
  }
}

class CupertinoTabBarExample extends StatelessWidget {
  const CupertinoTabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book),
            label: 'Read',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.play_circle),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profile',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, index) {
        switch (index) {
          case 0:
            return ReadScreen();
          case 1:
            return VideoScreen();
          case 2:
            return ProfileScreen();
          default:
            return Container();
        }
      },
    );
  }
}
