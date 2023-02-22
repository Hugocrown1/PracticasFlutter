import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz/home_page.dart';

class PantallaFinal extends StatefulWidget {
  const PantallaFinal({super.key, required Data data});

  @override
  State<PantallaFinal> createState() => _PantallaFinalState();
}

class _PantallaFinalState extends State<PantallaFinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDEB986),
      body: SafeArea(
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
                  'Juego terminado \nHas tenido ${data.numAciertos} aciertos y ${data.numFallos} fallos \n¿desea volver a intentar?',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xff005377),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      data.numAciertos = 0;
                      data.numFallos = 0;
                      data.numPregunta = 0;

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    });
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.replay,
                        size: 50,
                        color: Color.fromARGB(255, 192, 190, 190),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                        child: Text('Reintentar',
                            style: TextStyle(
                              color: Color.fromARGB(255, 192, 190, 190),
                              fontSize: 24,
                            )),
                      ),
                    ],
                  )),
            ),
          )
        ],
      )),
    );
  }
}
