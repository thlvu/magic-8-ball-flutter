import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class Answer extends StatefulWidget {
  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  int ballNumber = 0;

  void changeBallNumber() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    changeBallNumber();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                changeBallNumber();
              });
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        )
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Ask me Anything.',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      backgroundColor: Colors.blue[200],
      body: Answer(),
      ),
    );
  }
}
