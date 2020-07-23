import 'package:flutter/material.dart';

class CharacterAnswer extends StatelessWidget {
  final String answerText;
  final Function answerQuestion;

  CharacterAnswer(this.answerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: RaisedButton(
          onPressed: answerQuestion,
          color: Colors.indigo[800],
          child: Text(
            answerText,
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
