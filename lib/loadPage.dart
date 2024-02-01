// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, prefer_const_constructors_in_immutables, camel_case_types

import 'package:flutter/cupertino.dart';

void main() {
  runApp(loadPage());
}

class loadPage extends StatelessWidget {
  const loadPage({super.key});

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