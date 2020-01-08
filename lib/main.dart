import "package:flutter/material.dart";

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// _ makes classes, properties, methods private, it can only be accessed within the scope
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Coral', 'score': 5},
        {'text': 'Peach', 'score': 3},
        {'text': 'Royal blue', 'score': 10},
        {'text': 'Indigo', 'score': 8},
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Koala', 'score': 10},
        {'text': 'Cat', 'score': 7},
        {'text': 'Unicorn', 'score': 20},
      ],
    },
    {
      'question': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 15},
        {'text': 'Brad', 'score': 10},
        {'text': 'Eric', 'score': 5},
        {'text': 'Manu', 'score': 4},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more question");
    }
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override // overides the build method of statelesswidget
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app.'),
          backgroundColor: Colors.teal,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(resultScore: _totalScore, restartQuiz: _restartQuiz),
      ),
    ); // provided by material, turns individual widgets into an app
  }
}
