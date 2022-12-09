import 'package:paquetes/classes/pais-classes/translation.dart';

class NativeName {
    NativeName({
        required this.spa,
    });

    Translation spa;

    factory NativeName.fromMap(Map<String, dynamic> json) => NativeName(
        spa: Translation.fromMap(json["spa"]),
    );

    Map<String, dynamic> toMap() => {
        "spa": spa.toMap(),
    };
}