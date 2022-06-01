import 'package:flutter/material.dart';
import '../ColoresEstilosTamanos/Colores.dart';

class Buscador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double ancho = size.width;
    double alto = size.height;
    final sizeReference = 700.0;

    double getResponsiveText(double size) =>
        size * sizeReference / MediaQuery.of(context).size.longestSide;
    if (alto < 600 && ancho < 900) {
      return SizedBox(
        width: size.width * 0.5,
        height: size.height * 0.1,
        child: Column(
          children: [
            Material(
              elevation: 20,
              shadowColor: colorSombreado,
              borderRadius: BorderRadius.circular(30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: '  Busca tu tienda o producto',
                  hintStyle: TextStyle(fontSize: getResponsiveText(10)),
                  suffixIcon: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: ancho * 0.01),
                        child: Icon(
                          Icons.search,
                          color: colorIconoBuscador,
                          size: 30,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, 'Buscado',
                            arguments: null);
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return SizedBox(
        width: size.width * 0.45,
        height: size.height * 0.1,
        child: Column(
          children: [
            Material(
              elevation: 20,
              shadowColor: colorSombreado,
              borderRadius: BorderRadius.circular(30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: '  Busca tu tienda o producto',
                  suffixIcon: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: ancho * 0.01),
                        child: Icon(
                          Icons.search,
                          color: colorIconoBuscador,
                          size: 30,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, 'Buscado',
                            arguments: null);
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
