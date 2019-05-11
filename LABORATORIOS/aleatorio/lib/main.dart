import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generar aletorios 1 al 10',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Generar aletorios 1 al 10'),
        ),
        body: Center(
          child: AleatorioWidget(),
        ),
      ),
    );
  }
}

class AleatorioWidget extends StatefulWidget {
  @override
  State<AleatorioWidget> createState() {
    return new AleatorioWidgetState();
  }
}

class AleatorioWidgetState extends State<AleatorioWidget> {
  int numero = 1;

  void generarAletorioClick() {
    setState(() {
      var rnd = new Random();
      numero = rnd.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          Text(
            'Numero Aletorio ${numero} ',
            style: new TextStyle(fontSize: 24.0),
          ),
          RaisedButton(
            child: Text('Generar Aletorio'),
            onPressed: () {
              generarAletorioClick();
            },
          )
        ],
      ),
    );
  }
}
