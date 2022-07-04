import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/masbuscados_response.dart';
import '../models/resultMasBuscados.dart';
import '../variablesEntorno.dart';

class MasBuscadosProvaider extends ChangeNotifier {
  List<ResultMasBuscados> onDisplayMasbuscados = [];
  MasBuscadosProvaider() {
    print('MasBuscadosProvaider inicializado');

    this.getMasBuscadosProvaider();
  }

  getMasBuscadosProvaider() async {
    String url = httpMasBuscados + "/search/exhibitor-most-visited/3";

    final response = await http.get(Uri.parse(url));
    final masbuscadosresponse = MasbuscadosResponse.fromJson(response.body);
    for (int i = 0; i < masbuscadosresponse.content.length; i++) {
      print(masbuscadosresponse.content[i].exhibitorId);
      print(masbuscadosresponse.content[i].description);
      print(masbuscadosresponse.content[i].filters);
      print(masbuscadosresponse.content[i].imgProfile);
      print(masbuscadosresponse.content[i].localityName);
      print(masbuscadosresponse.content[i].name);
      print(masbuscadosresponse.content[i].primaryTags);
      print(masbuscadosresponse.content[i].tags);
    }
    this.onDisplayMasbuscados = masbuscadosresponse.content;
    notifyListeners();
  }
}
