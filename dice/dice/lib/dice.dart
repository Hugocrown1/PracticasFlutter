import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
