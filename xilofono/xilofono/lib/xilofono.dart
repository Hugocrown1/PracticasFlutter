import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

class Xilofono extends StatefulWidget {
  const Xilofono({super.key});

  @override
  State<Xilofono> createState() => _XiloState();
}

class _XiloState extends State<Xilofono> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Tecla(1, 0xFFFF4D4D),
          Tecla(2, 0xFFFF8700),
          Tecla(3, 0xFFFFD300),
          Tecla(4, 0xFFA1FF0A),
          Tecla(5, 0xFF0AEFFF),
          Tecla(6, 0xFF147DF5),
          Tecla(7, 0xFF580AFF),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Expanded Tecla(valorAudio, valorColor) {
    Audio audio = Audio.load('assets/sounds/assets_note$valorAudio.wav');
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(backgroundColor: Color(valorColor)),
          onPressed: () {
            audio.play();
          },
          child: Container()),
    );
  }
}
