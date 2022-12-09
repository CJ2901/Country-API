class CapitalInfo {
  CapitalInfo({
    required this.latlng,
  });

  List<double> latlng;

  factory CapitalInfo.fromMap(Map<String, dynamic> json) => CapitalInfo(
        latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
      );

  Map<String, dynamic> toMap() => {
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
      };
}
