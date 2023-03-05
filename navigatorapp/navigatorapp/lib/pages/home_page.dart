import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navigatorapp/pages/segundapagina.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator App'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Inicio',
                style: TextStyle(fontSize: 25),
              ),
              CupertinoButton(
                  child: Text('Ir a segunda pagina'),
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (_) => SegundaPagina(
                              nombre: 'HUGO',
                            ));

                    Navigator.push(context, route);
                    print('Continua el codigo...');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
