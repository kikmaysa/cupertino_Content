// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, file_names

import 'package:flutter/cupertino.dart';

void main() {
  runApp(const videoScreen());
}

class videoScreen extends StatelessWidget {
  const videoScreen({super.key});

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
