import 'package:flutter/material.dart';
import './textcontrol.dart';

class App extends StatelessWidget {
  final String bodyText;
  final Function changeText;

  App({this.bodyText, this.changeText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is an Appbar.'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: TextControl(bodyText: bodyText, changeText: changeText),
      ),
    );
  }
}
