part of '_index.dart';

class Product {
  final String id;
  final String brand;
  final String model;
  final int year;
  final int price;
  final String imageUrl;
  final String createdAt;
  final String updatedAt;
  Product({
    this.id = '',
    this.brand = '',
    this.model = '',
    this.year = 0,
    this.price = 0,
    this.imageUrl = '',
    this.createdAt = '',
    this.updatedAt = '',
  });

  Product copyWith({
    String? id,
    String? brand,
    String? model,
    int? year,
    int? price,
    String? imageUrl,
    String? createdAt,
    String? updatedAt,
  }) {
    return Product(
      id: id ?? this.id,
      brand: brand ?? this.brand,
      model: model ?? this.model,
      year: year ?? this.year,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'brand': brand});
    result.addAll({'model': model});
    result.addAll({'year': year});
    result.addAll({'price': price});
    result.addAll({'image_url': imageUrl});
    result.addAll({'created_at': createdAt});
    result.addAll({'updated_at': updatedAt});

    return result;
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      brand: map['brand'] ?? '',
      model: map['model'] ?? '',
      year: map['year']?.toInt() ?? 0,
      price: map['price']?.toInt() ?? 0,
      imageUrl: map['image_url'] ?? '',
      createdAt: map['created_at'] ?? '',
      updatedAt: map['updated_at'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, brand: $brand, model: $model, year: $year, price: $price, imageUrl: $imageUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.brand == brand &&
        other.model == model &&
        other.year == year &&
        other.price == price &&
        other.imageUrl == imageUrl &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        brand.hashCode ^
        model.hashCode ^
        year.hashCode ^
        price.hashCode ^
        imageUrl.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
