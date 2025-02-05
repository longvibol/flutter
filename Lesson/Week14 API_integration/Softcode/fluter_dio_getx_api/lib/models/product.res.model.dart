class Product {
  int id;
  String? name;
  String? description;
  double? price;
  int? stock;
  String? status;
  String? image;
  DateTime? createdAt;
  DateTime? updatedAt;

  Product({
    required this.id,
    this.name,
    this.description,
    this.price,
    this.stock,
    this.status,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      stock: json['stock'],
      status: json['status'],
      image: json['image'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'stock': stock,
      'status': status,
      'image': image,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}
