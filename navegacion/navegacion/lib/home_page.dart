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
        body: ListView(
      children: [
        ListTile(
          title: Text('Ir al login'),
          subtitle: Text('Te manda al login'),
          trailing: Icon(Icons.arrow_forward),
          leading: CircleAvatar(
            child: Text('🏠'),
          ),
          onTap: () {
            final ruta = MaterialPageRoute(
              builder: (_) => const LoginPage(),
            );
            Navigator.push(context, ruta);
          },
        ),
        ListTile(
          title: Text('Ir al help screen'),
          subtitle: Text('Te manda a la pantalla de ayuda'),
          trailing: Icon(Icons.arrow_forward),
          leading: CircleAvatar(
            child: Text('🥶'),
          ),
          onTap: () {
            final ruta = MaterialPageRoute(
              builder: (_) => const HelpPage(),
            );
            Navigator.push(context, ruta);
          },
        )
      ],
    ));
  }
}
