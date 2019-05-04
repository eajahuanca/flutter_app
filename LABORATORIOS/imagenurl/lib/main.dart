import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Cargar imagen desde una url';

    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('Cargando Imagen URL'),
                Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                ),
                Image.network(
                  'https://picsum.photos/250?image=60',
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
              ],
            ),
          ), 
        ),        
      );
  }
}
