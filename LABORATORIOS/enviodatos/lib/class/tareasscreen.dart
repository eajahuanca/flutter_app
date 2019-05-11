import 'package:flutter/material.dart';
import 'package:enviodatos/main.dart';
import 'package:enviodatos/class/detallescreen.dart';

class TareasScreen extends StatelessWidget {
  final List<Tarea> tareas;

  TareasScreen({Key key, @required this.tareas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tareas'),
      ),
      body: ListView.builder(
        itemCount: tareas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tareas[index].titulo),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleScreen(tarea: tareas[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
