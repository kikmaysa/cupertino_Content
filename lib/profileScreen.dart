// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, file_names

import 'package:cupertino_ios_ui_style/logoutedScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(profileScreen());
}

class profileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTheme(
      data: CupertinoThemeData(
        brightness: Brightness.light,
      ),
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('Cometnity'),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 100, 6, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CupertinoButton(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/images/Cometnity.jpg'),
                    ),
                    onPressed: () {},
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Cometnity',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'A place where code meets creativity',
                        style: TextStyle(
                          fontSize: 14,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              CupertinoListSection(
                children: <Widget>[
                  CupertinoListTile(
                    title: const Text('Edit Profile Info'),
                    leading: Icon(CupertinoIcons.person),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () => (context),
                  ),
                  CupertinoListTile(
                    title: const Text('Setting'),
                    leading: Icon(CupertinoIcons.settings),
                    trailing: const CupertinoListTileChevron(),
                    onTap: () => (context),
                  ),
                ],
              ),
              CupertinoListSection(
                children: <Widget>[
                  CupertinoButton(
                    onPressed: () => _showActionSheet(context),
                    child: const Text(
                      'Log out',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 68, 55),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// This shows a CupertinoModalPopup which hosts a CupertinoActionSheet.
void _showActionSheet(BuildContext context) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoActionSheet(
      title: const Text('Log out'),
      message: const Text('Do you want to log out?'),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => const logoutedScreen()),
            );
          },
          child: const Text('Log out'),
        ),
        CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
      ],
    ),
  );
}
