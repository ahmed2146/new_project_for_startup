import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultLine {
    return "You Did it..\nYour Total Score is $resultScore";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultLine,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text("Restart Quiz"),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
