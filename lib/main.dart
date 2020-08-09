import 'dart:math';

import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
    // Underscore ( _ ) turns MyAppState as a private class
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What\'s you favorite color?',
      'answers': [
        {
          'text': 'Black',
          'score': new Random().nextInt(10) + 1,
        },
        {
          'text': 'Red',
          'score': new Random().nextInt(10) + 1,
        },
        {
          'text': 'Green',
          'score': new Random().nextInt(10) + 1,
        },
        {
          'text': 'Blue',
          'score': new Random().nextInt(10) + 1,
        }
      ]
    },
    {
      'questionText': 'What\s you favorite animal?',
      'answers': [
        {
          'text': 'Rabbit',
          'score': new Random().nextInt(10) + 1,
        },
        {
          'text': 'Snake',
          'score': new Random().nextInt(10) + 1,
        },
        {
          'text': 'Elephant',
          'score': new Random().nextInt(10) + 1,
        },
        {
          'text': 'Lion',
          'score': new Random().nextInt(10) + 1,
        }
      ]
    },
    {
      'questionText': 'What\'s you favorite Tool?',
      'answers': [
        {
          'text': 'Pliar',
          'score': new Random().nextInt(10) + 1,
        },
        {
          'text': 'Stool',
          'score': new Random().nextInt(10) + 1,
        },
        {
          'text': 'Screwdriver',
          'score': new Random().nextInt(10) + 1,
        },
        {
          'text': 'Pannar',
          'score': new Random().nextInt(10) + 1,
        }
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              onPressed: _resetQuiz,
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 18),
              ),
              shape: CircleBorder(
                side: BorderSide(color: Colors.transparent),
              ),
            )
          ],
        ),
        body: Center(
          child: (_questionIndex < _questions.length)
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore),
        ),
      ),
    );
  }
}
