import 'package:dice/dice.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(22, 26, 29, 1),
      appBar: AppBar(
        title: const Text('OPEN THE GAME'),
      ),
      body: const DiceGame(),
    );
  }
}
