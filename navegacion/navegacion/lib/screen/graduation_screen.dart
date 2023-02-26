import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../home_page.dart';

class GraduationScreen extends StatelessWidget {
  const GraduationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212529),
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
              TextButton(
                onPressed: () {
                  final ruta = MaterialPageRoute(
                    builder: (_) => const HomePage(),
                  );
                  Navigator.push(context, ruta);
                },
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Icon(
                    Icons.arrow_back,
                    size: 35,
                    color: Color(0xffB25186),
                  ),
                ),
              ),
              //Album cover
              Padding(
                padding: const EdgeInsets.fromLTRB(49, 8, 8, 3),
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/graduation.jpg')),
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
                  'Graduation',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'FranklinMedium',
                      color: Color(0xffE9ECEF)),
                ),
                Text(
                  style: TextStyle(fontSize: 15, color: Color(0xffADB5BD)),
                  'Kanye West · 2007 · 10 canciones',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 5, 12),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffB25186),
                  radius: 30,
                  child: Icon(
                    Icons.play_arrow,
                    size: 25,
                    color: Color(0xffADB5BD),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.shuffle,
                    color: Color(0xffADB5BD),
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 450,
            height: 320,
            child: ListView(
              children: [
                cancionLista('Good Morning', 'Kanye West'),
                cancionLista('Champion', 'Kanye West'),
                cancionLista('Stronger', 'Kanye West'),
                cancionLista('I Wonder', 'Kanye West'),
                cancionLista('Good Life', 'Kanye West, T-Pain'),
                cancionLista('Flashing Lights', 'Kanye West, Dwele'),
                cancionLista('Everything I Am', 'Kanye West, DJ Premier'),
                cancionLista('Homecoming', 'Kanye West, Chris Martin'),
                cancionLista('Big Brother', 'Kanye West'),
                cancionLista('Good Night', 'Kanye West, Mos Def, Albe Back'),
              ],
            ),
          )
        ],
      )),
    );
  }

  ListTile cancionLista(nombreCancion, feat) {
    return ListTile(
      title: Text(
        nombreCancion,
        style: TextStyle(
            fontSize: 18,
            color: Color(0xffE9ECEF),
            fontFamily: 'FranklinMedium',
            fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        feat,
        style: TextStyle(color: Color(0xffADB5BD)),
      ),
      trailing: Icon(
        Icons.audiotrack,
        color: Color(0xffADB5BD),
      ),
    );
  }
}
