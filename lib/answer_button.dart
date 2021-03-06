import 'package:flutter/material.dart';
import 'package:questions/main.dart';

class AnswerButton extends StatefulWidget {
  Color color;
  String text;
  bool value;
  Function callBack;
  AnswerButton(this.color, this.text, this.value, this.callBack);

  @override
  _AnswerButtonState createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: TextButton(
          onPressed: () {
            this.checkAnswer();
          },
          child: Text(
            widget.text,
            style: TextStyle(color: Colors.black),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widget.color),
          ),
        ),
      ),
    );
  }

  void checkAnswer() {
    setState(() {
      if (quizBrain.questions.length - 1 > quizBrain.getQuestionNumber()) {
        if (widget.value ==
            quizBrain.questions[quizBrain.getQuestionNumber()].answer) {
          quizBrain
              .addResultIcon(Icon(Icons.check, color: Colors.lightGreenAccent));
          quizBrain.correctAnswer++;
        } else {
          quizBrain.addResultIcon(Icon(Icons.cancel, color: Colors.redAccent));
        }
        if (quizBrain.questions.length != quizBrain.getQuestionNumber())
          quizBrain.increaseQuestion();
      } else {
        quizBrain.correctAnswer++;
        quizBrain.showDialog();
      }
      widget.callBack();
    });
  }
}
