class Gini {
    Gini({
        required this.the2019,
    });

    double the2019;

    factory Gini.fromMap(Map<String, dynamic> json) => Gini(
        the2019: json["2019"].toDouble(),
    );

    Map<String, dynamic> toMap() => {
        "2019": the2019,
    };
}