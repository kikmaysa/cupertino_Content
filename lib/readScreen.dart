// ignore_for_file: prefer_const_constructors, camel_case_types, file_names, unused_element, use_key_in_widget_constructors

import 'package:cupertino_ios_ui_style/photo_1min.dart';
import 'package:flutter/cupertino.dart';

class ReadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTheme(
      data: const CupertinoThemeData(
        brightness: Brightness.light,
      ),
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('Community'),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(6, 100, 6, 0),
          child: CupertinoListSection(
            header: const Text('Contents'),
            children: <Widget>[
              CupertinoListTile(
                title: const Text('Article'),
                leading: Container(
                  width: 40,
                  color: Color.fromARGB(255, 35, 23, 79),
                ),
                trailing: const CupertinoListTileChevron(),
                onTap: () => _showAlertDialog(context),
              ),
              CupertinoListTile(
                title: const Text('Recommends'),
                leading: Container(
                  width: 40,
                  color: Color.fromARGB(255, 51, 30, 107),
                ),
                trailing: const CupertinoListTileChevron(),
                onTap: () => _showAlertDialog(context),
              ),
              CupertinoListTile(
                title: const Text('1 Min Read'),
                leading: Container(
                  width: 40,
                  color: Color.fromARGB(255, 91, 0, 255),
                ),
                trailing: const CupertinoListTileChevron(),
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute<void>(
                      builder: (BuildContext context) {
                        return Photoonemin();
                      },
                    ),
                  );
                },
              ),
              CupertinoListTile(
                title: const Text('Challenge'),
                leading: Container(
                  width: 40,
                  color: Color.fromARGB(255, 255, 49, 127),
                ),
                trailing: const CupertinoListTileChevron(),
                onTap: () => _showAlertDialog(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// This shows a CupertinoModalPopup which hosts a CupertinoAlertDialog.
void _showAlertDialog(BuildContext context) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: const Text('Oops!'),
      content: const Text("Sorrry Now we don't have content"),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('ok'),
        ),
      ],
    ),
  );
}
