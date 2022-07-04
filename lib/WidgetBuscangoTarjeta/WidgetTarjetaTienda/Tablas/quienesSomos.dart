import 'package:flutter/material.dart';

import '../../../ColoresEstilosTamanos/Colores.dart';

class quienesSomos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double alto = size.height;
    return Container(
      width: size.width * 0.001,
      height: size.height * 0.55,
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) => Padding(
                        padding: EdgeInsets.symmetric(vertical: alto * 0.01),
                        child: _tarjetaquienesSomos(),
                      ))),
        ],
      ),
    );
  }
}

class _tarjetaquienesSomos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double alto = size.height;
    double ancho = size.width;
    return Container(
      width: size.width * 0.1,
      height: size.height * 0.7,
      decoration: BoxDecoration(
        color: colorFondoTarjetaGaleria,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(children: [
        Container(
          width: ancho * 0.4,
          height: alto * 0.8,
          child: Column(
            children: [
              Container(
                width: ancho * 0.9,
                height: alto * 0.2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: alto * 0.08, horizontal: ancho * 0.05),
                  child: Text(
                    'Quienes somos',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: ancho * 0.6,
                height: alto * 0.4,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    'assets/ejemplo.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: ancho * 0.4,
          height: alto * 0.9,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: alto * 0.2, horizontal: ancho * 0.05),
            child: Text(
              'Caja de texto descripción tienda',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ]),
    );
  }
}
