import 'package:flutter/material.dart';

import 'brain.dart';
import 'main.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  List<Questionn> question = quizBrain.questions;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          child: Text(question[quizBrain.getQuestionNumber()].question),
        ),
      ),
      flex: 7,
    );
  }
}
