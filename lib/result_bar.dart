import 'package:flutter/material.dart';
import 'package:questions/main.dart';

class ResultBar extends StatefulWidget {
  const ResultBar({Key? key}) : super(key: key);

  @override
  _ResultBarState createState() => _ResultBarState();
}

class _ResultBarState extends State<ResultBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: quizBrain.resultBar,
        ),
      ),
    ));
  }
}
