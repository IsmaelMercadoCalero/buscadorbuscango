import 'package:buscadorbuscango/ClasesPrincipales/BuscangoTarjeta.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'ClasesPrincipales/Buscango.dart';
import 'ClasesPrincipales/BuscangoBuscar.dart';
import 'providers/masbuscados_provider.dart';

void main() {
  AndroidGoogleMapsFlutter.useAndroidViewSurface = true;

  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MasBuscadosProvaider(),
          lazy: false,
        ),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String opcion = "";
    return MaterialApp(
      title: 'Buscango',
      debugShowCheckedModeBanner: false,
      //Este es el nombre de la primera ruta a mostrar
      initialRoute: 'home',
      routes: {
        //Asignamos la clase de la primera ruta
        'home': (_) => Buscango(),
        'Buscado': (_) => BuscangoBuscar(opcion),
        'TarjetaBuscada': (_) => BuscangoTarjeta(),
      },
    );
  }
}
