
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Introducción", 
            style: TextStyle(
              fontSize: 30, color: Colors.blue) ),
         
      ),
      leading: const Icon(
        Icons.accessibility,
        size: 40,
        color: Colors.amber
        ),
      ),
      body: Text("tra tra tra tra"),
    );
  }
}