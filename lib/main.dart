import 'package:flutter/material.dart';
import 'package:questions/brain.dart';
import 'package:questions/question.dart';
import 'package:questions/result_bar.dart';

import 'answer_button.dart';

final QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Layout(),
        ),
      ),
    );
  }
}

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Question(),
          AnswerButton(Colors.greenAccent, "True", true, callBack),
          AnswerButton(Colors.redAccent, "False", false, callBack),
          ResultBar(),
        ],
      ),
    );
  }

  void callBack() {
    setState(() {});
  }
}
