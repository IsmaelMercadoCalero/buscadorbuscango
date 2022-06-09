import 'package:buscadorbuscango/WidgetBuscangoTarjeta/WidgetTarjetaTienda/partesuperiorTarjeta.dart';
import 'package:flutter/material.dart';
import '../ColoresEstilosTamanos/Colores.dart';
import '../WidgetBuscango/MasBuscados.dart';
import 'WidgetTarjetaTienda/Tablas/contacto.dart';
import 'WidgetTarjetaTienda/Tablas/galeria.dart';
import 'WidgetTarjetaTienda/Tablas/quienesSomos.dart';
import 'WidgetTarjetaTienda/controladorTablas.dart';

String categoriaPrincipal = "Categoría";
List<String> listaCategoria = ['Categoría 1', 'Categoría 2', 'Categoría 3'];

String subcategoriaPrincipal = "Subcategoría";
List<String> listasubCategoria = [
  'Subcategoría 1',
  'Subcategoría 2',
  'Subcategoría 3'
];

String ubicacionPrincipal = "Ubucación";
List<String> listaUbicacion = ['Ubucación 1', 'Ubucación 2', 'Ubucación 3'];

String marcaPrincipal = "Marca";
List<String> listaMarca = ['Marca 1', 'Marca 2', 'Marca 3'];

String modeloPrincipal = "Modelo";
List<String> listaModelo = ['Modelo 1', 'Modelo 2', 'Modelo 3'];

String precioPricipal = "Precio";
List<String> listaPrecio = ['Precio 1', 'Precio 2', 'Precio 3'];

TextStyle estiloBotones = TextStyle(color: colorGeneral, fontSize: 20);

class tarjetaTienda extends StatefulWidget {
  @override
  State<tarjetaTienda> createState() => _tarjetaTiendaState();
}

class _tarjetaTiendaState extends State<tarjetaTienda>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double ancho = size.width;
    double alto = size.height;
    return Container(
      width: ancho * 0.8,
      height: alto * 2,
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
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Column(
              children: [
                partesuperiorTarjeta(),
                controladorTablas(ancho, colorGeneral, controller),
                Container(
                  width: double.infinity,
                  height: alto * 1.5,
                  child: TabBarView(
                    controller: controller,
                    children: [
                      productosServicos(ancho, alto),
                      galeria(),
                      quienesSomos(),
                      contacto(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget productosServicos(double ancho, double alto) {
    return Container(
      height: alto * 1,
      width: ancho * 1,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: alto * 0.1),
            child: SizedBox(
              width: ancho * 0.35,
              height: alto * 0.04,
              child: buscador(ancho),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ancho * 0.01),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    color: colorDrop,
                    width: ancho * 0.08,
                    height: alto * 0.04,
                    child: Center(
                      child: Container(
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
                            style: estiloBotones,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: alto * 0.01),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    color: colorDrop,
                    width: ancho * 0.08,
                    height: alto * 0.04,
                    child: Center(
                      child: Container(
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
                            style: estiloBotones,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ancho * 0.01),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    color: colorDrop,
                    width: ancho * 0.08,
                    height: alto * 0.04,
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: DropdownButton(
                          underline: SizedBox(),
                          items: listaMarca.map((String valorMarca) {
                            return DropdownMenuItem(
                                value: valorMarca, child: Text(valorMarca));
                          }).toList(),
                          onChanged: (value) => {
                            setState(() {
                              marcaPrincipal = value.toString();
                            })
                          },
                          hint: Text(
                            marcaPrincipal,
                            style: estiloBotones,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ancho * 0.01),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    color: colorDrop,
                    width: ancho * 0.08,
                    height: alto * 0.04,
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: DropdownButton(
                          underline: SizedBox(),
                          items: listaModelo.map((String valorModelo) {
                            return DropdownMenuItem(
                                value: valorModelo, child: Text(valorModelo));
                          }).toList(),
                          onChanged: (value) => {
                            setState(() {
                              modeloPrincipal = value.toString();
                            })
                          },
                          hint: Text(
                            modeloPrincipal,
                            style: estiloBotones,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: ancho * 0.01),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Container(
                    color: colorDrop,
                    width: ancho * 0.08,
                    height: alto * 0.04,
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: DropdownButton(
                          underline: SizedBox(),
                          items: listaPrecio.map((String valorPrecio) {
                            return DropdownMenuItem(
                                value: valorPrecio, child: Text(valorPrecio));
                          }).toList(),
                          onChanged: (value) => {
                            setState(() {
                              precioPricipal = value.toString();
                            })
                          },
                          hint: Text(precioPricipal, style: estiloBotones),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          MasBuscado(),
        ],
      ),
    );
  }

  Widget buscador(double ancho) {
    return Material(
      elevation: 20,
      shadowColor: colorSombreado,
      borderRadius: BorderRadius.circular(30),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          hintText: '  Buscar producto en "nombre tienda"',
          suffixIcon: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: ancho * 0.01),
                child: Icon(
                  Icons.search,
                  color: colorIconoBuscador,
                  size: 35,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '', arguments: null);
              },
            ),
          ),
        ),
      ),
    );
  }
}
