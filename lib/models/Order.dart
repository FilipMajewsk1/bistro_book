import 'package:bistro_book/models/OrderLine.dart';
import 'package:bistro_book/models/Tablee.dart';

class Order {
  final int id;
  final String name;
  final String additionalInfo;
  final int tablee_id;
  final List<int> lines_ids;

  Order({
    required this.id,
    required this.name,
    required this.additionalInfo,
    required this.tablee_id,
    required this.lines_ids,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    id: json['id'],
    name: json['name'],
    additionalInfo: json['additionalInfo'],
    tablee_id: json['tablee_id'],
    lines_ids: List<int>.from(json['lines_ids']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'additionalInfo': additionalInfo,
    'tablee_id': tablee_id,
    'lines_ids': lines_ids,
  };

}
