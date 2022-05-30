import 'package:flutter/material.dart';

import '../ColoresEstilosTamanos/Estilos.dart';

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
