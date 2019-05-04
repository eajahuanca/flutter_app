import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cargando de Imagenes',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Cargado de Imagenes'),
        centerTitle: true
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Cargando imagen desde assets',
              style: TextStyle(fontSize: 18.0),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 18.0),
            ),
            Image.asset('assets/uva.png'),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
            ),
          ],
        ),
      ),
    );
  }
}
