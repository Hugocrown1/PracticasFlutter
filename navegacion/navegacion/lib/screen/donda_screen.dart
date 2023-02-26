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
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  size: 35,
                ),
              ),
              //Album cover
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 8, 8, 3),
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(''),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            //Columna que contiene la informacion del album
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'DONDA',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  style: TextStyle(fontSize: 15),
                  'Kanye West · 2021 · 10 canciones',
                )
              ],
            ),
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.shuffle,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 450,
            height: 100,
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    'DONDA',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text('Kanye West'),
                  trailing: Icon(Icons.audiotrack),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
