import 'package:flutter/material.dart';

import './characterquestion.dart';
import './characterimage.dart';
import "./characteranswer.dart";
import './characterquiz.dart';
import './characterquizresult.dart';

void main() => runApp(WhosThatCharacterApp());

class WhosThatCharacterApp extends StatefulWidget {
  @override
  _WhosThatCharacterState createState() => _WhosThatCharacterState();
}

class _WhosThatCharacterState extends State<WhosThatCharacterApp> {
  var _questionIndex = 0;
  var _userScore = 0;

//This is a List which contains a map with Strings as keys and other types of
//objects as values.
  var _questions = [
    {
      "image": "assets/images/jim.jpg",
      "questionText": "What's this character's name?",
      "answers": [
        {"text": "Jim Hawkins", "score": 1},
        {"text": "Silver", "score": 0},
        {"text": "Carole Baskin", "score": 0},
        {"text": "Johnny", "score": 0}
      ]
    },
    {
      "image": "assets/images/milo.jpg",
      "questionText": "What movie is this character from?",
      "answers": [
        {"text": "The Emperor's New Groove", "score": 0},
        {"text": "Treasure Planet", "score": 0},
        {"text": "Atlantis: The Lost Empire", "score": 1},
        {"text": "The Adventures of Huck Finn", "score": 0}
      ]
    },
    {
      "image": "assets/images/static.png",
      "questionText": "What's this character's alter ego?",
      "answers": [
        {"text": "Jake Cole", "score": 0},
        {"text": "Keith Johnson", "score": 0},
        {"text": "Jamal Wallace", "score": 0},
        {"text": "Virgil Hawkins", "score": 1}
      ]
    },
    {
      "image": "assets/images/mandt.jpeg",
      "questionText": "What movie are these characters from?",
      "answers": [
        {"text": "The Road to El Dorado", "score": 1},
        {"text": "The Mysteries of the New World", "score": 0},
        {"text": "An Adventure For Two", "score": 0},
        {"text": "Exploration", "score": 0}
      ]
    },
    {
      "image": "assets/images/sinbad.jpg",
      "questionText": "What's this character's name?",
      "answers": [
        {"text": "Leo the Sailor", "score": 0},
        {"text": "Aladdin", "score": 0},
        {"text": "Popeye", "score": 0},
        {"text": "Sinbad", "score": 1}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _userScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _userScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey[850],
          appBar: AppBar(
            backgroundColor: Colors.grey[600],
            title: Text("Who's That Character"),
          ),
          body: _questionIndex < _questions.length
              ? CharacterQuiz(_questions, _questionIndex, _answerQuestion)
              : Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "You got $_userScore out of 5 points",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      CharacterQuizResult(_userScore, _restartQuiz),
                    ],
                  ),
                ),
        ));
  }
}
