import 'package:flutter/material.dart';
import 'dart:math';

class DiceGame extends StatefulWidget {
  const DiceGame({super.key});

  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int leftdice = 1;
  int rightdice = 2;

  void rolldices() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        rolldices();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            children: [
              dado(Random().nextInt(6) + 1),
              dado(Random().nextInt(6) + 1),
            ],
          ),
        ),
      ),
    );
  }

  Expanded dado(valorDado) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
          onPressed: () {
            setState(() {});
          },
          child: Image.asset('assets/images/dice$valorDado.png')),
    ));
  }
}
