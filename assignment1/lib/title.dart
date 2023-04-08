import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  final String titleText;

  AppTitle(this.titleText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        titleText,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
