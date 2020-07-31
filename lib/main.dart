import 'package:Flutter_complete_Guide/answer.dart';
import 'package:flutter/material.dart';
import './question.dart';

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
  var questions = [
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
          title: Text("My First App"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Question(
                questions[_questionIndex]['questionText'],
              ),
              SizedBox(height: 50),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          ),
        ),
      ),
    );
  }
}
