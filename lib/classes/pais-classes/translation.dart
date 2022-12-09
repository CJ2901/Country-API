class Translation {
    Translation({
        required this.official,
        required this.common,
    });

    String official;
    String common;

    factory Translation.fromMap(Map<String, dynamic> json) => Translation(
        official: json["official"],
        common: json["common"],
    );

    Map<String, dynamic> toMap() => {
        "official": official,
        "common": common,
    };
}