// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result({
    Key? key,
    required this.resultScore,
    required this.resetHandler,
  }) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 12) {
      resultText = 'You are awesome';
    } else if (resultScore < 12 && resultScore >= 10) {
      resultText = 'You are a good person';
    } else if (resultScore < 10 && resultScore >= 7) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are kind of weird!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Your score is $resultScore',
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
          ),
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text('Restart'),
          ),
        ],
      ),
    );
  }
}
