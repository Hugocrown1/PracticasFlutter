import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffDEB986),
      body: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> puntuacion = [
    // Icon(
    //   Icons.check,
    //   size: 40,
    //   color: Color(0xff06A77D),
    // ),
    // Icon(
    //   Icons.close,
    //   size: 40,
    //   color: Color(0xffFF2638),
    // )
  ];

  List<String> preguntas = [
    '¿Los globulos rojos viven 4 meses?',
    'El cuerpo humano adulto tiene 306 huesos',
    'La cobalamina es una vitamina',
  ];

  int numeroPregunta = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  preguntas[numeroPregunta],
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xff052F5F),
                  borderRadius: BorderRadius.circular(15)),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    numeroPregunta++;
                    puntuacion.add(const Icon(Icons.check));
                  });
                },
                child: const Text("VERDADERO",
                    style:
                        TextStyle(color: Color.fromARGB(255, 213, 209, 209))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xff005377),
                  borderRadius: BorderRadius.circular(15)),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    numeroPregunta++;
                    puntuacion.add(const Icon(Icons.close));
                  });
                },
                child: const Text("FALSO",
                    style:
                        TextStyle(color: Color.fromARGB(255, 192, 190, 190))),
              ),
            ),
          ),
          Row(
            children: puntuacion,
          )
        ],
      ),
    );
  }
}
