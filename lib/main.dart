import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  List<String> questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(
              answerText: 'Answer 1',
              pressHandler: _answerQuestion,
            ),
            Answer(
              answerText: 'Answer 2',
              pressHandler: _answerQuestion,
            ),
            Answer(
              answerText: 'Answer 3',
              pressHandler: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      if (_questionIndex + 1 >= questions.length) {
        _questionIndex = 0;
        return;
      }

      _questionIndex += 1;
    });

    print('Answer chosen');
  }
}
