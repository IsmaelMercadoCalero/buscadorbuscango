import 'dart:convert';

class ResultMasBuscados {
  ResultMasBuscados({
    required this.exhibitorId,
    required this.name,
    required this.description,
    required this.imgProfile,
    required this.filters,
    required this.tags,
    required this.primaryTags,
    required this.localityName,
  });

  String exhibitorId;
  String name;
  String description;
  dynamic imgProfile;
  List<String> filters;
  List<String> tags;
  List<String> primaryTags;
  String localityName;

  factory ResultMasBuscados.fromJson(String str) =>
      ResultMasBuscados.fromMap(json.decode(str));

  factory ResultMasBuscados.fromMap(Map<String, dynamic> json) =>
      ResultMasBuscados(
        exhibitorId: json["exhibitorId"],
        name: json["name"],
        description: json["description"],
        imgProfile: json["imgProfile"],
        filters: List<String>.from(json["filters"].map((x) => x)),
        tags: List<String>.from(json["tags"].map((x) => x)),
        primaryTags: List<String>.from(json["primaryTags"].map((x) => x)),
        localityName: json["localityName"],
      );
}
