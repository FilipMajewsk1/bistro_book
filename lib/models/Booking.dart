import 'package:bistro_book/models/Tablee.dart';

class Booking {
  final int id;
  final String name;
  final String guestName;
  final String date;
  final String hour;
  final int guestNumber;
  final int tablee_id;

  Booking({
    required this.id,
    required this.name,
    required this.guestName,
    required this.date,
    required this.hour,
    required this.guestNumber,
    required this.tablee_id,
  });

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
    id: json['id'],
    name: json['name'],
    guestName: json['guestName'],
    date: json['date'],
    hour: json['hour'],
    guestNumber: json['guestNumber'],
    tablee_id: json['tablee_id'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'guestName': guestName,
    'date': date,
    'hour': hour,
    'guestNumber': guestNumber,
    'tablee_id': tablee_id,
  };
}