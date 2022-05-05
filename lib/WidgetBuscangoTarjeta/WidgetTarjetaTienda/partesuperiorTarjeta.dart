import 'package:flutter/material.dart';

class partesuperiorTarjeta extends StatefulWidget {
  @override
  State<partesuperiorTarjeta> createState() => _partesuperiorTarjetaState();
}

class _partesuperiorTarjetaState extends State<partesuperiorTarjeta> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double ancho = size.width;
    double alto = size.height;
    return Container(
      color: Colors.blueGrey,
      width: double.infinity,
      height: alto * 0.3,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ancho * 0.01, vertical: alto * 0.01),
            child: Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ancho * 0.2),
            child: Row(children: [
              SizedBox(
                width: ancho * 0.13,
                height: alto * 0.13,
                child: FloatingActionButton(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: alto * 0.04),
                    child: Column(
                      children: [
                        Icon(
                          Icons.image,
                          color: Colors.grey,
                        ),
                        Text(
                          'Imagen logo',
                          style: TextStyle(color: Colors.blueGrey),
                        )
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white,
                  onPressed: null,
                ),
              ),
              Text(
                'NOMBRE TIENDA',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
