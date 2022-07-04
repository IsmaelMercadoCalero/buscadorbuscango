import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import '../../../ColoresEstilosTamanos/Colores.dart';

class galeria extends StatelessWidget {
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
                        child: _tarjetaGaleria(),
                      ))),
        ],
      ),
    );
  }
}

class _tarjetaGaleria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double alto = size.height;
    double ancho = size.width;
    return Container(
      width: size.width * 0.1,
      height: size.height * 0.8,
      decoration: BoxDecoration(
        color: colorFondoTarjetaGaleria,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          width: ancho * 0.3,
          height: alto * 0.6,
          child: Column(
            children: [
              Container(
                width: ancho * 0.3,
                height: alto * 0.35,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ancho * 0.03, vertical: alto * 0.05),
                  child: Text(
                    'Título Galeria',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              Container(
                width: ancho * 0.3,
                height: alto * 0.25,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: ancho * 0.02),
                    child: Text(
                      'Caja de texto descripción de galería',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: ancho * 0.5,
          height: alto * 0.4,
          child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    'assets/ejemplo.jpg',
                    fit: BoxFit.fill,
                  ),
                );
              },
              itemCount: 12,
              control: SwiperControl(),
              pagination:
                  FractionPaginationBuilder(color: colorGeneral, fontSize: 25)),
        ),
      ]),
    );
  }
}
