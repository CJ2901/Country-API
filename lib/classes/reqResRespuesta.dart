import 'dart:convert';

import 'package:paquetes/classes/persona.dart';

ReqResRespuesta reqResRespuestaFromMap(String str) => ReqResRespuesta.fromMap(json.decode(str));

String reqResRespuestaToMap(ReqResRespuesta data) => json.encode(data.toMap());

class ReqResRespuesta {
  ReqResRespuesta({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });

  int page;
  int perPage;
  int total;
  int totalPages;
  List<Persona> data;

  factory ReqResRespuesta.fromMap(Map<String, dynamic> json) => ReqResRespuesta(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Persona>.from(json["data"].map((x) => Persona.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}
