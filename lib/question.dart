import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(
    this.questionText, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        shadowColor: Colors.lightBlueAccent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            questionText,
            style: const TextStyle(fontSize: 30, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
