import 'package:bistro_book/models/MenuItem.dart';

class OrderLine {
  final int id;
  final int order_id;
  final int menuItem_id;
  final int quantity;

  OrderLine({
    required this.id,
    required this.order_id,
    required this.menuItem_id,
    required this.quantity,
  });

  factory OrderLine.fromJson(Map<String, dynamic> json) => OrderLine(
    id: json['id'],
    order_id: json['order_id'],
    menuItem_id: json['menuItem_id'],
    quantity: json['quantity'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'order_id': order_id,
    'menuItem_id':  menuItem_id,
    'quantity': quantity,
  };
}
