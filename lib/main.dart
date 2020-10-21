import "package:flutter/material.dart";

import "./question.dart";

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
  var _questionIndex = 0;
  void _answerquestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's Your Favourite color?",
      "Whats Your Favourite Animal"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerquestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerquestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: _answerquestion,
            ),
          ],
        ),
      ),
    );
  }
}
