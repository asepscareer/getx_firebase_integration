class Product {
  int? id;
  String? name;
  double? price;
  String? releaseDate;

  Product({this.id, this.name, this.price, this.releaseDate});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    releaseDate = json['releaseDate'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['releaseDate'] = releaseDate;
    return data;
  }
}
