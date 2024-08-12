import 'dart:convert';

class Product {
  final String name;
  final int resellerPrice;
  final int stock;

  Product({
    required this.name,
    required this.resellerPrice,
    required this.stock,
  });

  Product copyWith({
    String? name,
    int? resellerPrice,
    int? stock,
  }) {
    return Product(
      name: name ?? this.name,
      resellerPrice: resellerPrice ?? this.resellerPrice,
      stock: stock ?? this.stock,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'reseller_price': resellerPrice,
      'stock': stock,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] as String,
      resellerPrice: map['reseller_price'] as int,
      stock: map['stock'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Product(name: $name, resellerPrice: $resellerPrice, stock: $stock)';

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.resellerPrice == resellerPrice &&
        other.stock == stock;
  }

  @override
  int get hashCode => name.hashCode ^ resellerPrice.hashCode ^ stock.hashCode;
}
