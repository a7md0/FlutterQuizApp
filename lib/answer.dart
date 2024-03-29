import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function pressHandler;

  Answer({this.answerText, this.pressHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.answerText),
        onPressed: this.pressHandler,
      ),
    );
  }
}
