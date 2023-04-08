import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final String _questionAnswer;
  final VoidCallback _function;

  Answer(this._questionAnswer, this._function);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Text(_questionAnswer),
        onPressed: _function,
      ),
      );
  }
}
