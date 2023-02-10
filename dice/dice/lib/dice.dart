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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
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
                )),
              ],
            ),
            ButtonTheme(
              minWidth: 100,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    rollrightdice();
                    rollleftdice();
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.replay_outlined),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
