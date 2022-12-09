class Languages {
    Languages({
        required this.spa,
    });

    String spa;

    factory Languages.fromMap(Map<String, dynamic> json) => Languages(
        spa: json["spa"],
    );

    Map<String, dynamic> toMap() => {
        "spa": spa,
    };
}
