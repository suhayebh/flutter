import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function function;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(this.questions, this.function, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        //new class
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) => Answer(answer['text'] as String, () => function(answer['score'] as int)))
            .toList(),
      ],
    );
  }
}
