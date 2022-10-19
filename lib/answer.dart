import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback changeQuestion;
  final String questionAnswer;
  const Answer(
    this.changeQuestion,
    this.questionAnswer, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor: Colors.lightBlueAccent,
        ),
        onPressed: changeQuestion,
        child: Text(questionAnswer),
      ),
    );
  }
}
