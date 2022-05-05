import 'package:buscadorbuscango/ClasesPrincipales/Buscango.dart';
import 'package:buscadorbuscango/WidgetBuscango/PiePagina.dart';
import 'package:buscadorbuscango/WidgetBuscangoTarjeta/contendorSuperior.dart';
import 'package:flutter/material.dart';

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

String modeloPrincipal = "Marca";
List<String> listaModelo = ['Modelo 1', 'Modelo 2', 'Modelo 3'];

String precioPricipal = "Precio";
List<String> listaPrecio = ['Precio 1', 'Precio 2', 'Precio 3'];

class BuscangoTarjeta extends StatefulWidget {
  @override
  State<BuscangoTarjeta> createState() => _BuscangoTarjetaState();
}

class _BuscangoTarjetaState extends State<BuscangoTarjeta>
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
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: false,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              contendorSuperior(),
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
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: ancho * 0.4,
                              child: DefaultTabController(
                                length: 4,
                                child: TabBar(
                                  indicatorColor: colorGeneral,
                                  labelColor: colorGeneral,
                                  indicatorWeight: 8,
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
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
                                  controller: controller,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: alto * 1.5,
                            child: TabBarView(
                              controller: controller,
                              children: [
                                Container(
                                  height: alto * 1,
                                  width: ancho * 1,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: alto * 0.1),
                                        child: SizedBox(
                                          width: size.width * 0.45,
                                          height: size.height * 0.06,
                                          child: Column(
                                            children: [
                                              Material(
                                                elevation: 20,
                                                shadowColor: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    ),
                                                    hintText:
                                                        '  Buscar producto en "nombre tienda"',
                                                    suffixIcon: MouseRegion(
                                                      cursor: SystemMouseCursors
                                                          .click,
                                                      child: GestureDetector(
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      ancho *
                                                                          0.01),
                                                          child: Icon(
                                                            Icons.search,
                                                            color: Colors.black,
                                                            size: 25,
                                                          ),
                                                        ),
                                                        onTap: () {},
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: ancho * 0.01),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50)),
                                              child: Container(
                                                color: Colors.white,
                                                width: size.width * 0.06,
                                                height: size.height * 0.03,
                                                child: Center(
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5),
                                                    child: DropdownButton(
                                                      underline: SizedBox(),
                                                      items: listaCategoria.map(
                                                          (String valorLista) {
                                                        return DropdownMenuItem(
                                                            value: valorLista,
                                                            child: Text(
                                                                valorLista));
                                                      }).toList(),
                                                      onChanged: (value) => {
                                                        setState(() {
                                                          categoriaPrincipal =
                                                              value.toString();
                                                        })
                                                      },
                                                      hint: Text(
                                                        categoriaPrincipal,
                                                        style: TextStyle(
                                                            color:
                                                                colorGeneral),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: alto * 0.01),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50)),
                                              child: Container(
                                                color: Colors.white,
                                                width: size.width * 0.06,
                                                height: size.height * 0.03,
                                                child: Center(
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5),
                                                    child: DropdownButton(
                                                      underline: SizedBox(),
                                                      items: listasubCategoria
                                                          .map((String
                                                              valorLista) {
                                                        return DropdownMenuItem(
                                                            value: valorLista,
                                                            child: Text(
                                                                valorLista));
                                                      }).toList(),
                                                      onChanged: (value) => {
                                                        setState(() {
                                                          subcategoriaPrincipal =
                                                              value.toString();
                                                        })
                                                      },
                                                      hint: Text(
                                                        subcategoriaPrincipal,
                                                        style: TextStyle(
                                                            color:
                                                                colorGeneral),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: ancho * 0.01),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50)),
                                              child: Container(
                                                color: Colors.white,
                                                width: size.width * 0.06,
                                                height: size.height * 0.03,
                                                child: Center(
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5),
                                                    child: DropdownButton(
                                                      underline: SizedBox(),
                                                      items: listaMarca.map(
                                                          (String valorMarca) {
                                                        return DropdownMenuItem(
                                                            value: valorMarca,
                                                            child: Text(
                                                                valorMarca));
                                                      }).toList(),
                                                      onChanged: (value) => {
                                                        setState(() {
                                                          marcaPrincipal =
                                                              value.toString();
                                                        })
                                                      },
                                                      hint: Text(
                                                        marcaPrincipal,
                                                        style: TextStyle(
                                                            color:
                                                                colorGeneral),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: ancho * 0.01),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50)),
                                              child: Container(
                                                color: Colors.white,
                                                width: size.width * 0.06,
                                                height: size.height * 0.03,
                                                child: Center(
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5),
                                                    child: DropdownButton(
                                                      underline: SizedBox(),
                                                      items: listaModelo.map(
                                                          (String valorModelo) {
                                                        return DropdownMenuItem(
                                                            value: valorModelo,
                                                            child: Text(
                                                                valorModelo));
                                                      }).toList(),
                                                      onChanged: (value) => {
                                                        setState(() {
                                                          modeloPrincipal =
                                                              value.toString();
                                                        })
                                                      },
                                                      hint: Text(
                                                        modeloPrincipal,
                                                        style: TextStyle(
                                                            color:
                                                                colorGeneral),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: ancho * 0.01),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50)),
                                              child: Container(
                                                color: Colors.white,
                                                width: size.width * 0.06,
                                                height: size.height * 0.03,
                                                child: Center(
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5),
                                                    child: DropdownButton(
                                                      underline: SizedBox(),
                                                      items: listaPrecio.map(
                                                          (String valorPrecio) {
                                                        return DropdownMenuItem(
                                                            value: valorPrecio,
                                                            child: Text(
                                                                valorPrecio));
                                                      }).toList(),
                                                      onChanged: (value) => {
                                                        setState(() {
                                                          precioPricipal =
                                                              value.toString();
                                                        })
                                                      },
                                                      hint: Text(
                                                        precioPricipal,
                                                        style: TextStyle(
                                                            color:
                                                                colorGeneral),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Text('Contenedor 2'),
                                Text('Contenedor 3'),
                                Text('Contenedor 4'),
                              ],
                            ),
                          )
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
    );
  }
}
