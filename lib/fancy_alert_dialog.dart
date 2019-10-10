library fancy_alert_dialog;

import 'package:flutter/material.dart';

class FancyAlertDialog {
  static showFancyAlertDialog(
    BuildContext context,
    String title,
    String message,
    Color backgroundColor, {
    bool dismissable = true,
    Icon icon,
    @required String labelPositiveButton,
    @required String labelNegativeButton,
    @required VoidCallback onTapPositiveButton,
    @required VoidCallback onTapNegativeButton,
  }) {
    assert(context != null, 'context is null!!!');
    assert(title != null, 'title is null!!!');
    assert(message != null, 'message is null!!!');
    assert(labelPositiveButton != null, 'labelPositiveButton is null');
    assert(labelNegativeButton != null, 'labelNegativeButton is null');
    assert(onTapPositiveButton != null, 'onTapPositiveButton is null');
    assert(onTapNegativeButton != null, 'onTapNegativeButton is null');
    return showDialog(
      context: context,
      barrierDismissible: dismissable,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        child: Wrap(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
                color: backgroundColor,
              ),
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Stack(
                children: <Widget>[
                  Align(
                    child: icon ?? Container(),
                    alignment: Alignment.center,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 8.0,
                right: 16.0,
                bottom: 8.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.caption,
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          color: Colors.grey,
                          child: Text(
                            labelNegativeButton.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: onTapNegativeButton,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                          color: backgroundColor,
                          child: Text(
                            labelPositiveButton.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: onTapPositiveButton,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
