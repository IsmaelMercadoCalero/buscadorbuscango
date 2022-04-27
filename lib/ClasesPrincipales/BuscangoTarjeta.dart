import 'package:buscadorbuscango/ClasesPrincipales/Buscango.dart';
import 'package:buscadorbuscango/WidgetBuscango/Buscador.dart';
import 'package:buscadorbuscango/WidgetBuscango/PiePagina.dart';
import 'package:flutter/material.dart';

TextStyle textBuscango = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.blue[900],
  fontSize: 50.0,
);

class BuscangoTarjeta extends StatefulWidget {
  @override
  State<BuscangoTarjeta> createState() => _BuscangoTarjetaState();
}

class _BuscangoTarjetaState extends State<BuscangoTarjeta> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double ancho = size.width;
    double alto = size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: false,
      body: DefaultTabController(
        length: 4,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: colorGeneral,
                  width: double.infinity,
                  height: alto * 0.15,
                  child: Row(
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: ancho * 0.02)),
                      Container(
                        child: Text(
                          'Buscango',
                          textAlign: TextAlign.center,
                          style: textBuscango,
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: ancho * 0.01)),
                      Container(
                          width: ancho * 0.55,
                          height: alto * 0.06,
                          child: Buscador()),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: alto * 0.08)),
                Container(
                  width: size.width * 0.8,
                  height: size.height * 2,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
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
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.blueGrey,
                              width: double.infinity,
                              height: alto * 0.3,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: ancho * 0.01,
                                        vertical: alto * 0.01),
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
                                    padding: EdgeInsets.symmetric(
                                        horizontal: ancho * 0.2),
                                    child: Row(children: [
                                      SizedBox(
                                        width: ancho * 0.13,
                                        height: alto * 0.13,
                                        child: FloatingActionButton(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: alto * 0.04),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.image,
                                                  color: Colors.grey,
                                                ),
                                                Text(
                                                  'Imagen logo',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey),
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
                            ),
                            Container(
                              width: ancho * 0.4,
                              child: TabBar(
                                indicatorColor: colorGeneral,
                                labelColor: colorGeneral,
                                indicatorWeight: 8,
                                labelStyle: TextStyle(fontSize: 15),
                                tabs: [
                                  Tab(
                                    text: 'Productos/Servicios',
                                  ),
                                  Tab(
                                    text: 'Galería',
                                  ),
                                  Tab(
                                    text: 'Quíenes somos',
                                  ),
                                  Tab(
                                    text: 'Contacto',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: alto * 0.1)),
                PiePagina()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
