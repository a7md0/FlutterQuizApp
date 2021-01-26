import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;

  final Function answerHandler;

  Quiz(
      {@required this.questions,
      @required this.answerHandler,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) => Answer(
                  answerText: answer,
                  pressHandler: answerHandler,
                ))
            .toList(),
      ],
    );
  }
}
