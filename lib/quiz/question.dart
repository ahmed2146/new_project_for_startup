import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.yellow,
      margin: EdgeInsets.all(10),
      child: Text(
        question,
        style: TextStyle(
            fontSize: 24,
            color: Colors.deepOrange,
            backgroundColor: Colors.blue),
        textAlign: TextAlign.center,
      ),
    );
  }
}
