import 'package:flutter/material.dart';
import 'clases/primera.dart';
import 'clases/segunda.dart';

void main() {
  runApp(MaterialApp(
    title: 'Laboratorio de navegación',
    initialRoute: '/',
    routes: {
      '/': (context) => PrimeraPantalla(),
      '/segundo': (context) => SegundaPantalla(),
    },
  ));
}
