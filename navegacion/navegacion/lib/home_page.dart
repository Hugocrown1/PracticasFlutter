import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion/screen/donda_screen.dart';
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
        //Primera fila
        Row(
          children: [
            //Botones del album como tal

            //Donda Button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                    final ruta = MaterialPageRoute(
                      builder: (_) => const DondaScreen(),
                    );
                    Navigator.push(context, ruta);
                  },
                  child:
                      botonAlbum('assets/images/donda.png', 'DONDA', '2021')),
            ),

            //TLOP Button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {},
                child: botonAlbum(
                    'assets/images/tlop.jpg', 'The Life Of Hugo', '2016'),
              ),
            ),
          ],
        ),
        //Segunda fila
        Row(
          children: [
            botonAlbum('assets/images/mtdf.jpg', 'MBTDF', '2010'),
            botonAlbum('assets/images/graduation.jpg', 'Graduation', '2007'),
          ],
        )
      ],
    )));
  }

  Container botonAlbum(cover, nombre, salida) {
    return Container(
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
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  image: DecorationImage(image: AssetImage(cover))),
              child: Text(''),
            ),
          ),
          Text(
            nombre,
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.justify,
          ),
          Text(
            salida,
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
