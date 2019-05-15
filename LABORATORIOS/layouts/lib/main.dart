import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenido a Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Juego de frutas'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/cereza.png'),
              Image.asset('assets/frutilla.png'),
              Image.asset('assets/pinia.png'),
            ],
          ),
        ),
      ),
    );
  }
}
