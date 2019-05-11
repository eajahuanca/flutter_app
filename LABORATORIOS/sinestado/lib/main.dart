import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'StatelessWidget',
        home: Scaffold(body: Center(child: PlayerWidget())));
  }
}

class PlayerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightBlueAccent,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                iconSize: 100.0,
                onPressed: () {}),
            Text(
              'Buscar',
              style: new TextStyle(fontSize: 24.0, color: Color.fromARGB(125, 100, 15, 84), fontStyle: FontStyle.italic),
            )
          ],
        ));
  }
}
