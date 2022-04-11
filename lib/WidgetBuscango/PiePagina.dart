import 'package:flutter/material.dart';

TextStyle textBuscango = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.blue[900],
  fontSize: 50.0,
);

TextStyle textSomos = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontSize: 20.0,
);

class PiePagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1,
      height: size.height * 0.25,
      color: Colors.blue,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
                height: size.height * 1,
                width: size.width * 0.33,
                child: ContenedorSomos()),
            Container(
                height: size.height * 1,
                width: size.width * 0.33,
                child: ContenedorBuscango()),
            Container(
                height: size.height * 1,
                width: size.width * 0.34,
                child: BotonAcceder()),
          ],
        ),
      ),
    );
  }

  Widget ContenedorBuscango() {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'BUSCANGO',
        textAlign: TextAlign.center,
        style: textBuscango,
        overflow: TextOverflow.clip,
      ),
    );
  }

  Widget ContenedorSomos() {
    return Align(
      alignment: Alignment.center,
      child: Text(
        '¿Quiénes somos?',
        style: textSomos,
      ),
    );
  }

  Widget BotonAcceder() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(380, 50),
            shape: StadiumBorder(),
            primary: Colors.white,
            onPrimary: Colors.blue,
          ),
          onPressed: () {},
          icon: Icon(Icons.person),
          label: Text(
            "Acceder escaparate o suscribete",
            overflow: TextOverflow.clip,
            style: TextStyle(fontSize: 17),
          ),
        ),
      ],
    );
  }
}
