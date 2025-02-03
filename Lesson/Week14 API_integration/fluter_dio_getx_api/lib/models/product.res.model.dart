class Product {
  int? _id;
  String? _name;
  String? _description;
  double? _price;
  int? _stock;
  String? _status;
  String? _image;
  String? _createdAt;
  String? _updatedAt;

  product(
      {int? id,
      String? name,
      String? description,
      double? price,
      int? stock,
      String? status,
      String? image,
      String? createdAt,
      String? updatedAt}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (description != null) {
      this._description = description;
    }
    if (price != null) {
      this._price = price;
    }
    if (stock != null) {
      this._stock = stock;
    }
    if (status != null) {
      this._status = status;
    }
    if (image != null) {
      this._image = image;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get description => _description;
  set description(String? description) => _description = description;
  double? get price => _price;
  set price(double? price) => _price = price;
  int? get stock => _stock;
  set stock(int? stock) => _stock = stock;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get image => _image;
  set image(String? image) => _image = image;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;

  Product.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _price = json['price'];
    _stock = json['stock'];
    _status = json['status'];
    _image = json['image'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['description'] = this._description;
    data['price'] = this._price;
    data['stock'] = this._stock;
    data['status'] = this._status;
    data['image'] = this._image;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}
