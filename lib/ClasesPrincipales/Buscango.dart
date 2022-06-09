import 'package:flutter/material.dart';
import '../ColoresEstilosTamanos/Colores.dart';
import '../WidgetBuscango/MasBuscados.dart';
import '../WidgetBuscango/PiePagina.dart';
import '../WidgetBuscango/UltimosMiembros.dart';

import '../WidgetBuscango/Buscador.dart';
import '../WidgetBuscango/CarruselImagenes.dart';
import '../WidgetBuscango/TextBuscango.dart';

//AGREGAR EFECTOS DE RATON
class Buscango extends StatefulWidget {
  @override
  State<Buscango> createState() => _BuscangoState();
}

class _BuscangoState extends State<Buscango> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double ancho = size.width;
    double alto = size.height;
    return Scaffold(
        backgroundColor: colorFondoBuscango,
        resizeToAvoidBottomInset: false,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: alto * 0.1),
                ),
                TextBuscango(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: alto * 0.03),
                ),
                Buscador(),
                CarruselImagenes(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: alto * 0.19),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: ancho * 0.12),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Lo más buscado',
                        style: TextStyle(
                            color: colorGeneral,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.clip),
                        textAlign: TextAlign.left),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: alto * 0.015),
                ),
                MasBuscado(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: alto * 0.01),
                ),
                Container(
                  width: size.width * 0.8,
                  height: size.height * 0.04,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      child: Text('Ver más',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: colorGeneral,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.clip),
                          textAlign: TextAlign.center),
                      onPressed: () {
                        print("Ver más");
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: alto * 0.08),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: ancho * 0.12),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Últimos miembros en Buscango',
                        style: TextStyle(
                            color: colorGeneral,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.clip),
                        textAlign: TextAlign.left),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: alto * 0.015),
                ),
                UltimosMiembros(3),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: alto * 0.01),
                ),
                Container(
                  width: size.width * 0.8,
                  height: size.height * 0.04,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      child: Text('Ver más',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: colorGeneral,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.clip),
                      onPressed: () {
                        print("Ver más");
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: alto * 0.075),
                ),
                PiePagina(),
              ],
            ),
          ),
        ));
  }
}
