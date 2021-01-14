import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onClick;
  final String buttonText;

  Answer(this.onClick, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[200],
        onPressed: onClick,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 18,
          color: Colors.white,
        ),
      ),
    ));
  }
}
