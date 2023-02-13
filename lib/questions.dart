import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  // ignore: use_key_in_widget_constructors
  const Questions(
      this.questionText); // Question(this.questionText) gets a value from Questions(question[questionIndex]) from main.dart and returns it in the place.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
