import "package:flutter/material.dart";

class Question extends StatelessWidget {
  final String
      questionText; // final tells that this value will never change after its initialization kind of like const in JS
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // takes as much space as it can
      margin: EdgeInsets.all(15), // margin, padding works exactly like CSS
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
