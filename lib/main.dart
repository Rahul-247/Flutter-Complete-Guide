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
  var _questionIndex = 0;
  var _questions = [
    {
      'questionText': 'What\'s you favorite color?',
      'answers': ['Black', 'Red', 'Green', 'Black']
    },
    {
      'questionText': 'What\s you favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'What\'s you favorite Tool?',
      'answers': ['Pliar', 'Stool', 'Screwdriver', 'Pannar']
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
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
              : Result(),
        ),
      ),
    );
  }
}
