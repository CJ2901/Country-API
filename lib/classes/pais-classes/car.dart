class Car {
  Car({
    required this.signs,
    required this.side,
  });

  List<String> signs;
  String side;

  factory Car.fromMap(Map<String, dynamic> json) => Car(
        signs: List<String>.from(json["signs"].map((x) => x)),
        side: json["side"],
      );

  Map<String, dynamic> toMap() => {
        "signs": List<dynamic>.from(signs.map((x) => x)),
        "side": side,
      };
}
