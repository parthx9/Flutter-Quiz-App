import "package:flutter/material.dart";

import 'quiz.dart';
import 'result.dart';

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

class _MyAppState extends State<MyApp> {
  var totalscore = 0;

  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'blue', 'score': 5},
        {'text': 'black', 'score': 10},
        {'text': 'green', 'score': 3},
        {'text': 'white', 'score': 1},
      ],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'tiger', 'score': 10},
        {'text': 'elephant', 'score': 5},
        {'text': 'deer', 'score': 3},
        {'text': 'rabbit', 'score': 1},
      ],
    },
    {
      'questionText': 'Who is your favorite instructor',
      'answers': [
        {'text': 'Max', 'score': 3},
        {'text': 'Rob', 'score': 10},
        {'text': 'Mark', 'score': 5},
        {'text': 'Alex', 'score': 1},
      ]
    }
  ];

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      totalscore = 0;
    });
  }

  var _questionIndex = 0;
  void _answerquestion(int score) {
    totalscore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          backgroundColor: Colors.grey,
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                score: totalscore,
                questions: _questions,
                questionIndex: _questionIndex,
                answerquestion: _answerquestion)
            : Result(totalscore, _restartQuiz),
      ),
    );
  }
}
