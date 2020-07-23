import 'package:flutter/material.dart';

import './characterquestion.dart';
import './characteranswer.dart';
import './characterimage.dart';

class CharacterQuiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  CharacterQuiz(this.questions, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CharacterQuestion(questions[questionIndex]['questionText']),
        Image.asset(questions[questionIndex]['image']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return CharacterAnswer(
              () => answerQuestion(answer['score']), answer['text']);
        })
      ],
    );
  }
}
