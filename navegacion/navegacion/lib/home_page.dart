import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion/screen/help_page.dart';
import 'package:navegacion/screen/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        //Row donde estarán los albumes en fila
        Row(
          children: [
            //Container donde estarán la portada del album acompañados del nombre y año
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                //Columna para ordenar los componentes de arriba a abajo
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(color: Colors.black),
                        child: Text("donda"),
                      ),
                    ),
                    Text(
                      'DONDA\n  2020',
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
            ),
            //Boton del album como tal
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: () {},
                child: Container(
                  //Columna para ordenar los componentes de arriba a abajo
                  child: Column(
                    children: [
                      //Boton con el cover del album, nombre y año de salida
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/tlop.jpg'))),
                          child: Text(''),
                        ),
                      ),
                      Text(
                        'The Life Of Pablo',
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        '2016',
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    )));
  }
}
