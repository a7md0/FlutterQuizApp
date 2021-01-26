import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuizHandler;

  Result({this.resultScore, this.resetQuizHandler});

  String get resultPhrase {
    String resultText = 'You did it!';

    if (resultScore <= 8) {
      resultText = 'You\'re awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 24) {
      resultText = 'You are so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: resetQuizHandler,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
