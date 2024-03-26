class Product {
  final int id;
  final String name;
  final String quantity;
  final bool isAllergene;

  Product({
    required this.id,
    required this.name,
    required this.quantity,
    required this.isAllergene,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json['id'],
    name: json['name'],
    quantity: json['quantity'],
    isAllergene: json['isAllergene'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'quantity': quantity,
    'isAllergene': isAllergene,
  };
}
