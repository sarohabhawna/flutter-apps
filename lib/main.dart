import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override // overides the build method of statelesswidget
  Widget build(BuildContext context) {
    const questions = const [
      {
        'question': 'What\'s your favorite color?',
        'answers': ['Coral', 'Peach', 'Royal blue', 'Indigo'],
      },
      {
        'question': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Koala', 'Cat', 'Unicorn'],
      },
      {
        'question': 'What\'s your favorite instruction?',
        'answers': ['Max', 'Brad', "V", 'Manu'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app.'),
          backgroundColor: Colors.teal,
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              // ... is spread operator which now adds individual elements of this list to the parent list and prevents creating a nested list
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    ); // provided by material, turns individual widgets into an app
  }
}
