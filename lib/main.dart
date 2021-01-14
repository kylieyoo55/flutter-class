import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionindex = 0;
  var totalScore=0;
  void onClick(int score) {
totalScore += score;

    setState(() {
      questionindex++;
    });
    print(questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "question": "what's your favorite color?",
        "answer": [
          {"text": "Red", "score": 3},
          {"text": "Blue", "score": 5},
          {"text": "Green", "score": 4},
          {"text": "Black", "score": 7},
        ]
      },
      {
        "question": "what's youe favorite animal?",
        "answer": [
          {"text": "Dog", "score": 5},
          {"text": "Cat", "score": 2},
          {"text": "Panda", "score": 3},
          {"text": "Tiger", "score": 4},
        ]
      },
      {
        "question": "who is your favorite person?",
        "answer": [
          {"text": "Angela", "score": 5},
          {"text": "Max", "score": 4},
          {"text": "Mum", "score": 5},
          {"text": "Dad", "score": 3},
        ]
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Questions"),
          ),
          body: questionindex < questions.length
              ? Quiz(questionindex, questions, onClick)
              : Result(totalScore)),
    );
  }
}
