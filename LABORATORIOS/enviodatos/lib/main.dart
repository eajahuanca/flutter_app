//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:enviodatos/class/tareasscreen.dart';

class Tarea {
  final String titulo;
  final String descripcion;

  Tarea(this.titulo, this.descripcion);
}

void main() {
  runApp(MaterialApp(
    title: 'Pasar Datos',
    home: TareasScreen(
      tareas: List.generate(
        20,
        (i) => Tarea(
              'Tarea $i',
              'Una descripción que necesitas hacer en la tarea: $i',
            ),
      ),
    ),
  ));
}
