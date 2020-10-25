import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  Function restartQuiz;

  Result(this.totalScore, this.restartQuiz);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: [
          Text(
            'You scored ' + totalScore.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(onPressed: restartQuiz, child: Text('Restart Button'))
        ],
      ),
    ));
  }
}
