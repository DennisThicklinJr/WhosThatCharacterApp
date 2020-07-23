import 'package:flutter/material.dart';

class CharacterQuizResult extends StatelessWidget {
  final int userScore;
  final Function restartQuiz;

  CharacterQuizResult(this.userScore, this.restartQuiz);

  String get resultPhrase {
    String resultText = "Bruh, you're not an OG!";

    if (userScore == 5) {
      resultText = "You my friend, are an OG!";
    } else if (userScore == 4) {
      resultText = "You seem like an OG, you only missed one!";
    } else if (userScore == 3) {
      resultText = "Ok you are worrying me. Are you an OG?";
    } else if (userScore == 2) {
      resultText = "Bruh, your sus.";
    } else {
      resultText = "You are definitely not an OG! Be gone cringe kid!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Center(
              child: Text(
                resultPhrase,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          RaisedButton(
            onPressed: restartQuiz,
            color: Colors.indigo,
            child: Text("Restart Quiz!", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
