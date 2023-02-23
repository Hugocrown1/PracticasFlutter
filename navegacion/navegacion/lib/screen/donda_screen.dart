import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DondaScreen extends StatelessWidget {
  const DondaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
              //Columna que contiene todos los componentes
              Column(
        children: [
          //Fila que contendrá cover del album, boton de play, boton de like y boton de opciones
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Album cover
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(''),
                ),
              ),

              //Columna que contiene la informacion del album
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'DONDA',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      style: TextStyle(fontSize: 15),
                      'Kanye West · 2021 · 10 canciones',
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 5, 12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.play_arrow,
                    size: 25,
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
