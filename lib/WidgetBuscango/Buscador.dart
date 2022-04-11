import 'package:flutter/material.dart';

class Buscador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double ancho = size.width;
    return Center(
        child: SizedBox(
      width: size.width * 0.45,
      height: size.height * 0.1,
      child: Column(
        children: [
          Material(
            elevation: 20,
            shadowColor: Colors.black,
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
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, 'Buscado', arguments: null);
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}