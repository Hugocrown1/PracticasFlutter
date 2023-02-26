import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navegacion/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'LA BIBLIA DE KANYE WEST',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xffCED4DA),
                  fontSize: 40,
                  fontFamily: 'FranklinMedium',
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32.0),
            child: TextButton(
              onPressed: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const HomePage(),
                );
                Navigator.push(context, ruta);
              },
              child: Container(
                height: 80,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    border: Border.all(color: Color(0xffCED4DA), width: 2)),
                child: Center(
                    child: Text(
                  'CULTURIZARSE',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'FranklinMedium',
                      fontWeight: FontWeight.bold,
                      color: Color(0xffCED4DA)),
                )),
              ),
            ),
          )
        ],
      )),
    );
  }
}
