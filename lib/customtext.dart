import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String bodyText;
  CustomText(this.bodyText);
  @override
  Widget build(BuildContext context) {
    return Text(bodyText);
  }
}
