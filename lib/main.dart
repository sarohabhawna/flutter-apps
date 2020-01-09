import "package:flutter/material.dart";

import './app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _bodyText = 'This is the body text.';
  void _changeText() {
    setState(() {
      _bodyText = 'Text changed.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(
        bodyText: _bodyText,
        changeText: _changeText,
      ),
    );
  }
}
