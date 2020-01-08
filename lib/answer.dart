import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function buttonHandler;
  final String answerText;

  Answer(this.buttonHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.amberAccent,
        textColor: Colors.teal,
        child: Text(answerText),
        onPressed: buttonHandler,
      ),
    );
  }
}
