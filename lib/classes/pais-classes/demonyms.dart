import 'package:paquetes/classes/pais-classes/eng.dart';

class Demonyms {
  Demonyms({
    required this.eng,
    required this.fra,
  });

  Eng eng;
  Eng fra;

  factory Demonyms.fromMap(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromMap(json["eng"]),
        fra: Eng.fromMap(json["fra"]),
      );

  Map<String, dynamic> toMap() => {
        "eng": eng.toMap(),
        "fra": fra.toMap(),
      };
}
