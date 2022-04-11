import 'package:flutter/material.dart';

//Estilo del TextField Busca tu tienda o producto
TextStyle textBuscango = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.blue,
  fontSize: 50.0,
);

class TextBuscango extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'BUSCANGO',
      //Poner texto en el centro
      textAlign: TextAlign.center,
      //Asignarle un tamaño, tipo de fuente y color
      style: textBuscango,
    );
  }
}
