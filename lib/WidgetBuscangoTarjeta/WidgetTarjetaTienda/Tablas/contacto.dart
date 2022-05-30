import 'package:flutter/material.dart';

import '../../../ColoresEstilosTamanos/Colores.dart';
import '../../../ColoresEstilosTamanos/Estilos.dart';

class contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _tarjetaquienesSomos();
  }
}

class _tarjetaquienesSomos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double alto = size.height;
    double ancho = size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ancho * 0.001),
          child: Text(
            'Formulario de contacto',
            style: estiloFormulario,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ancho * 0.1),
          child: Container(
            width: ancho * 0.4,
            height: alto * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: '  Nombre',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: '  Correo electrónico',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: '   Número de teléfono',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: '  Escribe tu mensaje',
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Teléfono',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: colorDrop),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: colorDrop),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Ubicación',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: colorDrop),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
