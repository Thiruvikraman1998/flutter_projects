import 'package:flutter/material.dart';
import 'package:quizz_app/answers.dart';
import 'package:quizz_app/questions.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

// Stateful widget rebuilds the entire screen, but still holds the value inside setState() and passes anywhere in the screen.
  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color',
        'answers': ['Blue', 'Black', 'Green']
      },
      {
        'questionText': 'What\'s your favourite Animal',
        'answers': ['Dog', 'Cat', 'Cow']
      },
      {
        'questionText': 'What\'s your name',
        'answers': ['Vikram', 'Raj', 'Rajesh']
      },
      // above is the list of maps
    ];
    String title = "Quiz App";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Column(
          children: [
            Questions(
              questions[questionIndex]['questionText']
                  as String, // it takes the key of the incremented index of list questions.
            ),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answers(_answerQuestion, answer);
            }).toList()

            // (...) is a spread operator which takes the values from the list and works as an individual values.
          ],
        ),
      ),
    );
  }
}
