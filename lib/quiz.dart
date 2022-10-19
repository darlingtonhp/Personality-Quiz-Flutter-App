import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function changeQuestion;
  final int questionIndex;
  const Quiz(
      {Key? key,
      required this.questions,
      required this.changeQuestion,
      required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Question(questions[questionIndex]['questionText'] as String),
        const Expanded(
          child: SizedBox(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Expanded(
              child: Answer(() => changeQuestion(answer['score']),
                  answer['text'] as String),
            );
          },
        ).toList(),
      ],
    );
  }
}
