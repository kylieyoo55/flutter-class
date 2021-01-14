import 'package:flutter/material.dart';
import './answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
 final int questionIndex;
 final List <Map<String, Object>> questions;
 final Function onClick;

 Quiz(this.questionIndex,this.questions ,this.onClick);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
          Questions(questions[questionIndex]["question"]),
         ...(questions[questionIndex]["answer"] as List).map((el)=>Answer(()=>onClick(el["score"]),el["text"])
            ,
            )
          
        ],);
    
  }
}