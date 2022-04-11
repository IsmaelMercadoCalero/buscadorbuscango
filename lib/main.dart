import 'package:flutter/material.dart';

import 'ClasesPrincipales/Buscango.dart';
import 'ClasesPrincipales/BuscangoBuscar.dart';

void main() {
  //Llamamos a myapp para que esta ejecute la clase buscango
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buscango',
      //Este es el nombre de la primera ruta a mostrar
      initialRoute: 'home',
      routes: {
        //Asignamos la clase de la primera ruta
        'home': (_) => Buscango(),
        'Buscado': (_) => BuscangoBuscar(),
      },
    );
  }
}
