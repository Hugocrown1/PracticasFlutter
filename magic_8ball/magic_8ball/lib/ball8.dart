import 'dart:math';

import 'package:flutter/material.dart';

class Ball8 extends StatefulWidget {
  const Ball8({super.key});

  @override
  State<Ball8> createState() => _Ball8State();
}

class _Ball8State extends State<Ball8> {
  int bola = 1;
  void rolarbola() {
    setState(() {
      bola = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  rolarbola();
                },
                child: Image.asset('assets/images/$bola.png'))
          ],
        ),
      ),
    );
  }
}
