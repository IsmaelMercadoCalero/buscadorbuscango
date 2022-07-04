import 'package:buscadorbuscango/WidgetBuscangoTarjeta/googlemaps.dart';
import 'package:flutter/material.dart';
import '../../../ColoresEstilosTamanos/Estilos.dart';

class contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _contenedorContacto();
  }
}

// ignore: must_be_immutable
class _contenedorContacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double alto = size.height;
    double ancho = size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: alto * 0.08, horizontal: ancho * 0.15),
          child: Text(
            'Formulario de contacto',
            style: estiloFormulario,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ancho * 0.2),
          child: Container(
            width: ancho * 0.3,
            height: alto * 0.3,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: '  Nombre',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: alto * 0.03),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      hintText: '  Correo electrónico',
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: '   Número de teléfono',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: alto * 0.03),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      hintText: '  Escribe tu mensaje',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: alto * 0.06, horizontal: ancho * 0.15),
          child: Text(
            'Contacto',
            style: estiloFormulario,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ancho * 0.2),
          child: Container(
            width: ancho * 0.3,
            height: alto * 0.15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '  Telefono',
                  style: estiloContacto,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: alto * 0.03),
                  child: Text(
                    '  Email',
                    style: estiloContacto,
                  ),
                ),
                Text(
                  '  Dirección',
                  style: estiloContacto,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ancho * 0.15, vertical: alto * 0.1),
          child: Container(
            width: ancho * 0.5,
            height: alto * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Donde estamos',
                  style: estiloFormulario,
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: alto * 0.01)),
                Container(
                    width: ancho * 0.5,
                    height: alto * 0.45,
                    child: googlemaps())
              ],
            ),
          ),
        ),
      ],
    );
  }
}
