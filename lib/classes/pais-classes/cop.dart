class Cop {
    Cop({
        required this.name,
        required this.symbol,
    });

    String name;
    String symbol;

    factory Cop.fromMap(Map<String, dynamic> json) => Cop(
        name: json["name"],
        symbol: json["symbol"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "symbol": symbol,
    };
}