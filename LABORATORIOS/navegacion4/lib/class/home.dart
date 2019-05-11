import 'package:flutter/material.dart';
import 'package:navegacion4/class/selectionbutton.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retornando Datos - Laboratorio'),
      ),
      body: Center(child: SelectionButton()),
    );
  }
}
