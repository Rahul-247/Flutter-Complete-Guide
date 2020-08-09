import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  final iconArray = [];

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.arrow_forward),
          Text(answerText),
        ],
      ),
      color: Colors.cyan,
      textColor: Colors.white,
      onPressed: selectHandler,
      shape: OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
            width: 1.0,
            color: Colors.black,
          ),
          borderRadius: new BorderRadius.circular(20)),
    );
  }
}
