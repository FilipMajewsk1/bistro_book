import 'package:bistro_book/models/Product.dart';

class StorageRaport {
  final int id;
  final String date;
  final List<int> products_ids;

  StorageRaport({
    required this.id,
    required this.date,
    required this.products_ids,
  });

  factory StorageRaport.fromJson(Map<String, dynamic> json) => StorageRaport(
    id: json['id'],
    date: json['date'],
    products_ids: List<int>.from(json['products_ids']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'date': date,
    'products_ids': products_ids
  };

}
