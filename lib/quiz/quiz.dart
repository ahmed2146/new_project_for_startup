import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int index;

  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Answer the following Questions"),
        Question(questions[index]["question"]),
        ...(questions[index]["answer"] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(() => answerQuestion(answer["score"]), answer["text"]);
        }).toList()
      ],
    );
  }
}
