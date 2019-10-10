# fancy_alert_dialog
Demonstrates how to use the fancy_alert_dialog plugin.

### Example
```dart
import 'package:fancy_alert_dialog/fancy_alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fancy Alert Dialog'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show Fancy Alert Dialog'),
          onPressed: () {
            FancyAlertDialog.showFancyAlertDialog(
              context,
              'Info Fancy Alert Dialog Box',
              'This is a info alert dialog box. This plugin is used to help you easily create fancy dialog',
              Colors.blue,
              icon: Icon(
                Icons.clear,
                color: Colors.white,
              ),
              labelPositiveButton: 'OK',
              onTapPositiveButton: () {
                Navigator.pop(context);
                print('tap positive button');
              },
              labelNegativeButton: 'Cancel',
              onTapNegativeButton: () {
                Navigator.pop(context);
                print('tap negative button');
              },
            );
          },
        ),
      ),
    );
  }
}

```