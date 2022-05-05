import 'package:flutter/material.dart';

class galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double ancho = size.width;
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
    return Container(
      width: size.width * 0.1,
      height: size.height * 0.4,
      decoration: BoxDecoration(
        color: Colors.blueGrey[200],
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(children: []),
    );
  }
}
