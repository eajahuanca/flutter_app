import 'package:flutter/material.dart';
import 'segunda.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navegacion Basica',
    home: PrimeraRuta(),
  ));
}

class PrimeraRuta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Ruta'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Abrir segunda ruta'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaRuta()),
            );
          },
        ),
      ),
    );
  }
}


