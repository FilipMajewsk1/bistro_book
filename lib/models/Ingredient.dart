import 'package:bistro_book/models/Product.dart';

class Ingredient {
  final int id;
  final int product_id;
  final String quantity;

  Ingredient({
    required this.id,
    required this.product_id,
    required this.quantity,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
    id: json['id'],
    product_id: json['product_id'],
    quantity: json['quantity'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'product_id': product_id,
    'quantity': quantity,
  };
}
