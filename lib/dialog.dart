import 'package:flutter/material.dart';
import 'package:questions/main.dart';

class FinalDialog extends StatelessWidget {
  Function callBack;
  FinalDialog(this.callBack);
  @override
  Widget build(BuildContext context) {
    int score = quizBrain.correctAnswer;
    int total = quizBrain.questions.length;
    return AlertDialog(
      title: const Text('You finished the game!'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text('Score: $score / $total '),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Restart'),
          onPressed: () {
            quizBrain.resetAll();
            this.callBack();
          },
        ),
      ],
    );
  }
}
