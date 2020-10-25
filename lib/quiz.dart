import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  int score;
  final int questionIndex;
  final Function answerquestion;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerquestion,
      @required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                () => answerquestion(answer['score']), answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
