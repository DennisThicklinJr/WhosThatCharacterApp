import 'package:flutter/material.dart';

class CharacterQuestion extends StatelessWidget {
  final String questionText;

  CharacterQuestion(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          questionText,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
