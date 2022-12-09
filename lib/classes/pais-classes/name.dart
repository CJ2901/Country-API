import 'package:paquetes/classes/pais-classes/nativeName.dart';

class Name {
    Name({
        required this.common,
        required this.official,
        required this.nativeName,
    });

    String common;
    String official;
    NativeName nativeName;

    factory Name.fromMap(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: NativeName.fromMap(json["nativeName"]),
    );

    Map<String, dynamic> toMap() => {
        "common": common,
        "official": official,
        "nativeName": nativeName.toMap(),
    };
}
