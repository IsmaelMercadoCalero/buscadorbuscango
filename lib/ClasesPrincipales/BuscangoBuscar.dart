import 'package:buscadorbuscango/WidgetBuscango/UltimosMiembros.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../ColoresEstilosTamanos/Colores.dart';
import '../WidgetBuscango/PiePagina.dart';
import '../WidgetBuscango/Buscador.dart';
import '../WidgetBuscango/TextBuscango.dart';

//Lista de categorias
String categoriaPrincipal = "Categoría";
List<String> listaCategoria = ['Categoría 1', 'Categoría 2', 'Categoría 3'];
//Lista de subcategoria
String subcategoriaPrincipal = "Subcategoría";
List<String> listasubCategoria = [
  'Subcategoría 1',
  'Subcategoría 2',
  'Subcategoría 3'
];
//Lista de gps
String ubicacionPrincipal = "Ubucación";
List<String> listaUbicacion = ['Ubucación 1', 'Ubucación 2', 'Ubucación 3'];
final isSelected = <bool>[false, false];

class BuscangoBuscar extends StatefulWidget {
  @override
  State<BuscangoBuscar> createState() => _BuscangoBuscarState();
}

class _BuscangoBuscarState extends State<BuscangoBuscar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Hero(
      tag: 'Buscador',
      child: Scaffold(
          backgroundColor: colorFondoBuscango,
          resizeToAvoidBottomInset: false,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 80),
                  ),
                  //Texto buscango
                  TextBuscango(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  ),
                  Buscador(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  ),
                  Buttons(size),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  ),
                  Container(
                    width: size.width * 0.75,
                    height: size.height * 0.05,
                    child: Text('Numero Resultados de tiendas',
                        style: TextStyle(
                            color: colorGeneral,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.clip),
                        textAlign: TextAlign.left),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  ),
                  UltimosMiembros(4),
                  Padding(padding: EdgeInsets.symmetric(vertical: 80)),
                  PiePagina(),
                ],
              ),
            ),
          )),
    );
  }

  Widget Buttons(final size) {
    double ancho = size.width;
    return Center(
        child: Container(
      width: size.width * 0.6,
      height: size.height * 0.1,
      child: Row(
        children: [
          ToggleSwitch(
            minWidth: 200.0,
            minHeight: 55,
            cornerRadius: 30.0,
            activeBgColors: [
              [colorGeneral],
              [colorGeneral]
            ],
            activeFgColor: colorBotones,
            inactiveBgColor: colorBotones,
            inactiveFgColor: colorGeneral,
            initialLabelIndex: 0,
            totalSwitches: 2,
            labels: ['Tiendas', 'Productos'],
            radiusStyle: true,
            onToggle: (index) {
              print('Has seleccionado: $index');
            },
          ),
          SizedBox(
            width: ancho * 0.03,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: Container(
              color: colorDrop,
              width: size.width * 0.1,
              height: size.height * 0.06,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.auto_awesome_mosaic_rounded)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: DropdownButton(
                      underline: SizedBox(),
                      items: listaCategoria.map((String valorLista) {
                        return DropdownMenuItem(
                            value: valorLista, child: Text(valorLista));
                      }).toList(),
                      onChanged: (value) => {
                        setState(() {
                          categoriaPrincipal = value.toString();
                        })
                      },
                      hint: Text(
                        categoriaPrincipal,
                        style: TextStyle(color: colorGeneral),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: ancho * 0.03,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: Container(
              color: colorDrop,
              width: size.width * 0.1,
              height: size.height * 0.06,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.auto_awesome_mosaic_outlined)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: DropdownButton(
                      underline: SizedBox(),
                      items: listasubCategoria.map((String valorLista) {
                        return DropdownMenuItem(
                            value: valorLista, child: Text(valorLista));
                      }).toList(),
                      onChanged: (value) => {
                        setState(() {
                          subcategoriaPrincipal = value.toString();
                        })
                      },
                      hint: Text(
                        subcategoriaPrincipal,
                        style: TextStyle(color: colorGeneral),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: ancho * 0.03,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: Container(
              color: colorDrop,
              width: size.width * 0.1,
              height: size.height * 0.06,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.gps_fixed)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: DropdownButton(
                      underline: SizedBox(),
                      items: listaUbicacion.map((String valorLista) {
                        return DropdownMenuItem(
                            value: valorLista, child: Text(valorLista));
                      }).toList(),
                      onChanged: (value) => {
                        setState(() {
                          ubicacionPrincipal = value.toString();
                        })
                      },
                      hint: Text(
                        ubicacionPrincipal,
                        style: TextStyle(color: colorGeneral),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
