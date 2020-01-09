import 'package:flutter/material.dart';

import './customtext.dart';

class TextControl extends StatelessWidget {
  final String bodyText;
  final Function changeText;
  TextControl({this.bodyText, this.changeText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomText(bodyText),
        RaisedButton(
          child: Text('Change text'),
          onPressed: changeText,
        ),
      ],
    );
  }
}
