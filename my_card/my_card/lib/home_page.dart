import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('assets/images/yo.jpg'),
              backgroundColor: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "HUGO CORONA",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "FLUTTER DEVELOPER JR",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 10,
              indent: 100,
              endIndent: 100,
            ),
            Card(
              color: Colors.white,
              margin:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    const Text(
                      "+52 646 187 83 51",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    const Text(
                      "hugo.corona.r@gmail.com",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
