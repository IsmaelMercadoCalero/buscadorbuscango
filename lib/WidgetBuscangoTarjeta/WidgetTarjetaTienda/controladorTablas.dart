import 'package:flutter/material.dart';

Widget controladorTablas(
    double ancho, Color colorGeneral, TabController controller) {
  return Container(
    width: ancho * 0.4,
    child: DefaultTabController(
      length: 4,
      child: TabBar(
        indicatorColor: colorGeneral,
        labelColor: colorGeneral,
        indicatorWeight: 8,
        labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
  );
}
