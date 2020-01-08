import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;

  Result({this.resultScore, this.restartQuiz});

  String get resultPhrase {
    String resultText;
    if (resultScore < 15) {
      resultText = 'Yeah, you\'re pretty normal';
    } else if (resultScore <= 25) {
      resultText = 'Okay, moderately unique I\'d say';
    } else if (resultScore > 25) {
      resultText = 'Hi, welcome to the Unique Club';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart quiz!'),
          textColor: Colors.teal,
          onPressed: restartQuiz,
        )
      ],
    ));
  }
}
