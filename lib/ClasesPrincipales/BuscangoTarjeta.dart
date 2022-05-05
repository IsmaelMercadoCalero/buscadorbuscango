import 'package:buscadorbuscango/WidgetBuscango/PiePagina.dart';
import 'package:buscadorbuscango/WidgetBuscangoTarjeta/contendorSuperior.dart';
import 'package:buscadorbuscango/WidgetBuscangoTarjeta/tarjetaTienda.dart';
import 'package:flutter/material.dart';

class BuscangoTarjeta extends StatefulWidget {
  @override
  State<BuscangoTarjeta> createState() => _BuscangoTarjetaState();
}

class _BuscangoTarjetaState extends State<BuscangoTarjeta> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double alto = size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: false,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              contendorSuperior(),
              Padding(padding: EdgeInsets.symmetric(vertical: alto * 0.08)),
              tarjetaTienda(),
              Padding(padding: EdgeInsets.symmetric(vertical: alto * 0.1)),
              PiePagina()
            ],
          ),
        ),
      ),
    );
  }
}
