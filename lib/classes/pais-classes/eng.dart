class Eng {
  Eng({
    required this.f,
    required this.m,
  });

  String f;
  String m;

  factory Eng.fromMap(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
      );

  Map<String, dynamic> toMap() => {
        "f": f,
        "m": m,
      };
}
