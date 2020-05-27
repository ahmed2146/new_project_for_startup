import 'package:flutter/material.dart';
import 'package:new_project_for_startup/quiz/quiz.dart';
import 'package:new_project_for_startup/quiz/result.dart';

class QuizApplication extends State<StatefulWidget> {
  var _totalScore = 0;
  var _index = 0;

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _index = 0;
    });
  }

  final _questions = const [
    {
      "question": "What's your favorite Color?",
      "answer": [
        {"text": "Black", "score": 3},
        {"text": "Blue", "score": 5},
        {"text": "Yellow", "score": 8},
        {"text": "White", "score": 4}
      ]
    },
    {
      "question": "What's your favorite Animal?",
      "answer": [
        {"text": "Cat", "score": 3},
        {"text": "Dog", "score": 5},
        {"text": "Tiger", "score": 8},
        {"text": "Loin", "score": 6}
      ]
    },
    {
      "question": "What's your gender?",
      "answer": [
        {"text": "Man", "score": 8},
        {"text": "Woman", "score": 8},
        {"text": "Other", "score": 3},
        {"text": "UnKnown", "score": 1}
      ]
    },
    {
      "question": "Where You Live?",
      "answer": [
        {"text": "Islamabad", "score": 8},
        {"text": "Lahore", "score": 8},
        {"text": "Quetta", "score": 6},
        {"text": "Karachi", "score": 4}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
        body: _index < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                index: _index,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
