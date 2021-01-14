import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);
 

 String get resultPhrase{

   if (totalScore <=8){
     return "you are Awesom ";
   }else if (totalScore <= 12){
     return "amazing result";
   }else{
     return "you did it!";
   }
   
 }
  @override
  Widget build(BuildContext context) {
    return Center(
                child: Text(
                  resultPhrase,
                  style: TextStyle(fontSize: 80),
                ),
              );
  }
}