import 'package:flutter/material.dart';

import '../ColoresEstilosTamanos/Colores.dart';

class UltimosMiembros extends StatelessWidget {
  int numero = 0;
  UltimosMiembros(int i) {
    this.numero = i;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.55,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'TarjetaBuscada',
                              arguments: null);
                        },
                        child: _tarjetaExpositor())),
          ),
        ],
      ),
    );
  }
}

class _tarjetaExpositor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        width: size.width * 0.2,
        height: size.height * 0.1,
        decoration: BoxDecoration(
          color: colorTarjetaexpositor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              offset: Offset(7, 7),
              blurRadius: 6,
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 65, vertical: 15),
        child: Column(
          children: [
            Imagen(size),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: ContenedorTextos(size),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: ContenedorTag(size),
            )
          ],
        ),
      ),
    );
  }

  Widget Imagen(final size) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        width: size.width * 0.2,
        height: size.height * 0.3,
        child: FadeInImage(
          placeholder: AssetImage(
            'assets/ejemplo.jpg',
          ),
          image: NetworkImage(
            'assets/ejemplo.jpg',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget ContenedorTextos(Size size) {
    return Container(
      width: size.width * 0.18,
      height: size.height * 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 3, horizontal: 25),
            width: size.width * 1,
            height: size.height * 0.03,
            child: Text(
              'NOMBRE TIENDA',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Roboto-Bold'),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            width: size.width * 1,
            height: size.height * 0.03,
            child: Row(
              children: [
                Icon(Icons.car_repair_rounded),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Categoría',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Roboto-Bold'),
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 3, horizontal: 35),
            width: size.width * 1,
            height: size.height * 0.03,
            child: Row(
              children: [
                Icon(Icons.gps_fixed),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Ubicación',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Roboto-Bold'),
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  ContenedorTag(Size size) {
    double ancho = size.width;
    return Container(
      width: size.width * 0.2,
      height: size.height * 0.04,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: size.width * 0.04,
              height: size.height * 0.02,
              color: colorTag,
              child: Center(
                child: Text(
                  'Tag',
                  style: TextStyle(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          SizedBox(
            width: ancho * 0.01,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: size.width * 0.04,
              height: size.height * 0.02,
              color: colorTag,
              child: Center(
                child: Text(
                  'Tag',
                  style: TextStyle(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          SizedBox(
            width: ancho * 0.01,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: size.width * 0.04,
              height: size.height * 0.02,
              color: colorTag,
              child: Center(
                child: Text(
                  'Tag',
                  style: TextStyle(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
