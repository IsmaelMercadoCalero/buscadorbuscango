import 'package:flutter/material.dart';
import '../ClasesPrincipales/Buscango.dart';
import '../ClasesPrincipales/Buscango.dart';
import '../WidgetBuscango/Buscador.dart';

TextStyle textBuscango = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.blue[900],
  fontSize: 50.0,
);

class contendorSuperior extends StatefulWidget {
  @override
  State<contendorSuperior> createState() => _contendorSuperiorState();
}

class _contendorSuperiorState extends State<contendorSuperior> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double ancho = size.width;
    double alto = size.height;
    return Container(
      color: colorGeneral,
      width: double.infinity,
      height: alto * 0.15,
      child: Row(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: ancho * 0.02)),
          Container(
            child: Text(
              'Buscango',
              textAlign: TextAlign.center,
              style: textBuscango,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: ancho * 0.01)),
          Container(
              width: ancho * 0.55, height: alto * 0.06, child: Buscador()),
        ],
      ),
    );
  }
}
