import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectHandler;
  final String answerString;

  Answers(this.selectHandler, this.answerString);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answerString,
          style: TextStyle(
//            color: Colors.amberAccent,
//            backgroundColor: Colors.deepPurple.shade400,
              ),
        ),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandler,
      ),
    );
  }
}
