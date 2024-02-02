// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, file_names, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';

class VideoScreen extends StatelessWidget {
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CupertinoActivityIndicator(
                radius: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
