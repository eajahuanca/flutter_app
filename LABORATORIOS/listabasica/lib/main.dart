import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Lista Basica';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Buscar'),
            ),
            ListTile(
              leading: Icon(Icons.add_alert),
              title: Text('Adicionar Alerta'),
            ),
            ListTile(
              leading: Icon(Icons.report_problem),
              title: Text('Problemas'),
            ),
          ],
        ),
      ),
    );
  }
}
