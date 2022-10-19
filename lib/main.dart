import 'package:flutter/material.dart';
import 'package:personality_quiz_app/quiz.dart';
import 'package:personality_quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Personality Quiz'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _questions = const [
    {
      'questionText': 'What is your favourite pet?',
      'answers': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 4},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Goldfish', 'score': 2},
        {'text': 'Guinea Pig', 'score': 1}
      ]
    },
    {
      'questionText': 'Which English football team do you support?',
      'answers': [
        {'text': 'Manchester United', 'score': 5},
        {'text': 'Chelsea', 'score': 4},
        {'text': 'Liverpoool', 'score': 3},
        {'text': 'Arsenal', 'score': 2},
        {'text': 'Manchester City', 'score': 1}
      ],
    },
    {
      'questionText': 'What is your favourite travel destination?',
      'answers': [
        {'text': 'Victoria Falls', 'score': 5},
        {'text': 'Dublin', 'score': 4},
        {'text': 'Paris', 'score': 3},
        {'text': 'New York', 'score': 2},
        {'text': 'London', 'score': 1}
      ]
    },
  ];
  int _questionIndex = 0;
  var _totalScore = 0;
  void _changeQuestion(int score) {
    _totalScore += score;
    setState(
      () {
        _questionIndex++;
      },
    );
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  changeQuestion: _changeQuestion,
                )
              : Result(resultScore: _totalScore, resetHandler: _resetQuiz),
        ),
      ),
    );
  }
}
