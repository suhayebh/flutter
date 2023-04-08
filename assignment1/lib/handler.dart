import 'package:flutter/material.dart';

class Handler extends StatelessWidget {
  final Function setText;

  Handler(this.setText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: setText,
      child: const Text("Click Me"),
    );
  }
}
