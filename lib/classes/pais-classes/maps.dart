class Maps {
    Maps({
        required this.googleMaps,
        required this.openStreetMaps,
    });

    String googleMaps;
    String openStreetMaps;

    factory Maps.fromMap(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
    );

    Map<String, dynamic> toMap() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
    };
}

