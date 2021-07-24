import 'package:flutter/cupertino.dart';

class QuizBrain extends StatefulWidget {
  int _questionNumber = 0;
  List<Icon> resultBar = [];
  List<Questionn> questions = [
    Questionn('a', true),
    Questionn('b', true),
    Questionn('c', true),
    Questionn('d', true),
    Questionn('e', true),
  ];

  getQuestionNumber() {
    return this._questionNumber;
  }

  increaseQuestion() {
    this._questionNumber++;
  }

  addResultIcon(Icon icon) {
    this.resultBar.add(icon);
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class Questionn {
  String question;
  bool answer;
  Questionn(this.question, this.answer);
}
