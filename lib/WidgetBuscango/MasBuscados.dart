import 'package:flutter/material.dart';

import '../ColoresEstilosTamanos/Colores.dart';

class MasBuscado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.48,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) =>
                    _tarjetaExpositor()),
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
    double ancho = size.width;
    double alto = size.height;
    return Container(
      width: size.width * 0.2,
      height: size.height * 0.01,
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
        children: [Imagen(size), ContenedorTextos(size)],
      ),
    );
  }

  Widget Imagen(final size) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        width: size.width * 0.2,
        height: size.height * 0.32,
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
      width: size.width * 0.5,
      height: size.height * 0.125,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            width: size.width * 0.1,
            height: size.height * 0.018,
            child: Text(
              'Nombre Producto / Servicio',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Roboto-Bold'),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            width: size.width * 0.06,
            height: size.height * 0.018,
            margin: EdgeInsets.symmetric(vertical: 3, horizontal: 25),
            child: Text(
              'Categoría',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Roboto-Bold'),
              maxLines: 2,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          ContenedorTag(size)
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
