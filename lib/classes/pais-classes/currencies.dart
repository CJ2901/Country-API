import 'package:paquetes/classes/pais-classes/cop.dart';

class Currencies {
  Currencies({
    required this.cop,
  });

  Cop cop;

  factory Currencies.fromMap(Map<String, dynamic> json) => Currencies(
        cop: Cop.fromMap(json["COP"]),
      );

  Map<String, dynamic> toMap() => {
        "COP": cop.toMap(),
      };
}
