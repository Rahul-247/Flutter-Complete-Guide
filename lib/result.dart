import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultScore;

  Result(this.resultScore);

  String totalScoreString = 'You did it With a Score of ';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          totalScoreString,
          style: TextStyle(
            fontSize: 28,
            color: Colors.blueAccent,
          ),
        ),
        Text(
          resultScore.toString(),
          style: TextStyle(
            fontSize: 32,
            color: Colors.lightBlue,
          ),
        ),
      ],
    );
  }
}
