import 'dart:math';

import 'package:flutter/material.dart';
import 'package:diceapp/styled_text.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 5, 120),
        body: GradientContainer(),
      ),
    );
  }
}

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  int diceNumber = 1;
  final randomizer = Random();

  void rollDice() {
    setState(() {
      diceNumber = 1 + randomizer.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 63, 5, 120)
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/dice-$diceNumber.png',
                width: 200, height: 200),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                  EdgeInsets.all(10),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 102, 26, 179),
                ),
              ),
              onPressed: rollDice,
              child: const StyledText('Roll the dice'),
            ),
          ],
        ),
      ),
    );
  }
}
