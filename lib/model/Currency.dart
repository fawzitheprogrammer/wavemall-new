

class Currency {
  Currency({
    this.id,
    this.name,
    this.code,
    this.status,
    this.convertRate,
    this.symbol,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  String? code;
  int? status;
  double? convertRate;
  String? symbol;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        id: json["id"],
        name: json["name"],
        code: json["code"],
        status: json["status"],
        convertRate: json["convert_rate"].toDouble(),
        symbol: json["symbol"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
        "status": status,
        "convert_rate": convertRate,
        "symbol": symbol,
        "created_at": createdAt == null ? DateTime.now(): createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? DateTime.now(): updatedAt!.toIso8601String(),
      };
}
