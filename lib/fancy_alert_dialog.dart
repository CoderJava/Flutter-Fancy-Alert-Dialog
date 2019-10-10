library fancy_alert_dialog;

import 'package:flutter/material.dart';

class FancyAlertDialog {
  static Future showFancyAlertDialog(
    BuildContext context, {
    String title,
    bool dismissable,
  }) {
    assert(context != null, 'Context is null!!!');
    return showDialog(
      context: context,
      barrierDismissible: dismissable,
      child: Container(
        child: Center(
          child: Text('hello world'),
        ),
      ),
    );
  }
}
