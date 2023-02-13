import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectAnswer;

  final String answerText;

  const Answers(this.selectAnswer, this.answerText);

  // When the Answers(answers) is called the answers() function runs and sends the setSate to selectAnswer and it returns the index and the index of the question updates on the screen.

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: selectAnswer,
          child: Text(answerText),
        ));
  }
}
