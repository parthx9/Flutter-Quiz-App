import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerquestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
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
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerquestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerquestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerquestion,
            ),
          ],
        ),
      ),
    );
  }
}
