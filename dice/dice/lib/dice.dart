import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math';

class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/dice1.png'),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/dice2.png'),
        ))
      ],
    );
  }
}

class DiceGame extends StatefulWidget {
  const DiceGame({super.key});

  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int leftdice = 1;
  int rightdice = 2;

  rollleftdice() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
    });
  }

  rollrightdice() {
    setState(() {
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    rollleftdice();
                  },
                  child: Image.asset('assets/images/dice$leftdice.png')),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    rollrightdice();
                  },
                  child: Image.asset('assets/images/dice$rightdice.png')),
            ))
          ],
        ),
      ),
    );
  }
}
