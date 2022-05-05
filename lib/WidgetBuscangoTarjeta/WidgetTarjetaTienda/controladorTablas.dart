import 'package:flutter/material.dart';

Widget controladorTablas(
    double ancho, Color colorGeneral, TabController controller) {
  return Container(
    width: ancho * 0.35,
    child: DefaultTabController(
      length: 4,
      child: TabBar(
        indicatorColor: colorGeneral,
        labelColor: colorGeneral,
        indicatorWeight: 6,
        labelStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
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
