import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../home_page.dart';

class MbtdfScreen extends StatelessWidget {
  const MbtdfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212529),
      body: SafeArea(
          child:
              //Columna que contiene todos los componentes
              Column(
        children: [
          //Fila que contendrĂ¡ cover del album, boton de play, boton de like y boton de opciones
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
                    color: Color(0xfff2274c),
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
                          image: AssetImage('assets/images/mtdf.jpg')),
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
                  'My Beautiful Dark Twisted Fantasy',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'FranklinMedium',
                      color: Color(0xffE9ECEF)),
                ),
                Text(
                  style: TextStyle(fontSize: 15, color: Color(0xffADB5BD)),
                  'Kanye West Â· 2013 Â· 10 canciones',
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 5, 12),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xfff2274c),
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
            height: 290,
            child: ListView(
              children: [
                cancionLista('Dark Fantasy', 'Kanye West'),
                cancionLista('Gorgeous', 'Kanye West, Kid Cudi, Raekwon'),
                cancionLista('POWER', 'Kanye West'),
                cancionLista('All Of The Lights', 'Kanye West'),
                cancionLista('Monster', 'Kanye West, JAY-Z, Rick Ross,...'),
                cancionLista('So Appalled', 'Kanye West, JAY-Z, Pusha T,...'),
                cancionLista('Devil In A New Dress', 'Rick Ross'),
                cancionLista('Runaway', 'Kanye West, Pusha T'),
                cancionLista('Hell Of A Life', 'Kanye West'),
                cancionLista('Blame Game', 'Kanye West, John Legend'),
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
