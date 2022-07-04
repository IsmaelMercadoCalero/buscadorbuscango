import 'dart:convert';

import 'resultMasBuscados.dart';

class MasbuscadosResponse {
  MasbuscadosResponse({
    required this.message,
    required this.content,
    required this.status,
  });

  String message;
  List<ResultMasBuscados> content;
  int status;

  factory MasbuscadosResponse.fromJson(String str) =>
      MasbuscadosResponse.fromMap(json.decode(str));

  factory MasbuscadosResponse.fromMap(Map<String, dynamic> json) =>
      MasbuscadosResponse(
        message: json["message"],
        content: List<ResultMasBuscados>.from(
            json["content"].map((x) => ResultMasBuscados.fromMap(x))),
        status: json["status"],
      );
}
